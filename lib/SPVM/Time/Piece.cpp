// Copyright (c) 2023 Yuki Kimoto
// MIT License

#include "spvm_native.h"

#include <time.h>
#include <sstream>
#include <iomanip>

extern "C" {

static const char* FILE_NAME = "Time/Piece.cpp";

int32_t SPVM__Time__Piece__foo(SPVM_ENV* env, SPVM_VALUE* stack) {
  
  return 0;
}

int32_t SPVM__Time__Piece__strftime(SPVM_ENV* env, SPVM_VALUE* stack) {
  
  int32_t error_id = 0;
  
  void* obj_self = stack[0].oval;
  
  void* obj_format = stack[1].oval;
  
  if (!obj_format) {
    const char* format = "%a, %d %b %Y %H:%M:%S %Z";
    obj_format = env->new_string(env, stack, format, strlen(format));
  }
  
  const char* format = env->get_chars(env, stack, obj_format);
  
  void* obj_tm = env->get_field_object_by_name(env, stack, obj_self, "tm", &error_id, __func__, FILE_NAME, __LINE__);
  if (error_id) { return error_id; }
  
  struct tm* st_tm = (struct tm*)env->get_pointer(env, stack, obj_tm);
  
  int32_t ret_length = 128;
  
  void* obj_ret = env->new_string(env, stack, NULL, ret_length);
  
  char* ret = (char*)env->get_chars(env, stack, obj_ret);
  
  strftime(ret, ret_length, format, st_tm);
  
  int32_t write_length = strlen(ret);
  
  env->shorten(env, stack, obj_ret, write_length);
  
  stack[0].oval = obj_ret;
  
  return 0;
}

int32_t SPVM__Time__Piece__strptime_tm(SPVM_ENV* env, SPVM_VALUE* stack) {
  
  int32_t error_id = 0;
  
  void* obj_string = stack[0].oval;
  
  if (!obj_string) {
    return env->die(env, stack, "$string must be defined.", __func__, FILE_NAME, __LINE__);
  }
  
  const char* string = env->get_chars(env, stack, obj_string);
  
  void* obj_format = stack[1].oval;
  
  if (!obj_format) {
    return env->die(env, stack, "$format must be defined.", __func__, FILE_NAME, __LINE__);
  }
  
  const char* format = env->get_chars(env, stack, obj_format);
  
  struct tm* st_tm = (struct tm*)env->new_memory_block(env, stack, sizeof(struct tm));
  
  
  std::istringstream string_stream(string);
  
  string_stream >> std::get_time(st_tm, format);
  
  if (string_stream.fail()) {
    return env->die(env, stack, "std::get_time failed.", __func__, FILE_NAME, __LINE__);
  }
  
  void* obj_tm = env->new_pointer_object_by_name(env, stack, "Sys::Time::Tm", st_tm, &error_id, __func__, FILE_NAME, __LINE__);
  if (error_id) { return error_id; }
  
  stack[0].oval = obj_tm;
  
  return 0;
}

}
