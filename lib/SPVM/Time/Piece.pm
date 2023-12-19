package SPVM::Time::Piece;

our $VERSION = "0.001";

1;

=head1 Name

SPVM::Time::Piece - Dates and Times

=head1 Description

The Time::Piece class in L<SPVM> has methods to manipulate dates and times.

=head1 Usage

  use Time::Piece;
  
  my $tp = Time::Piece->localtime;
  say "Time is " . $tp->cdate;
  say "Year is " . $tp->year;

=head2 Interfaces

=over 2

=item L<Cloneable|SPVM::Cloneable>

=back

=head1 Fields

=head2 is_localtime

C<has is_localtime : byte;>

The flag if the L</"tm"> field is interpreted as a local time.

=head2 tm

C<has tm : L<Sys::Time::Tm|SPVM::Sys::Time::Tm>;>

Time information.

=head2 epoch

C<has epoch : ro long;>

Seconds from epoch time.

=head1 Class Methods

=head2 localtime

C<static method localtime : L<Time::Piece|SPVM::Time::Piece> ($epoch : long = -1L);>

=head2 localtime_tp

C<static method localtime_tp : L<Time::Piece|SPVM::Time::Piece> ($tp : L<Time::Piece|SPVM::Time::Piece>);>

=head2 gmtime

C<static method gmtime : L<Time::Piece|SPVM::Time::Piece> ($epoch : long = -1L);>

=head2 gmtime_tp

C<static method gmtime_tp : L<Time::Piece|SPVM::Time::Piece> ($tp : L<Time::Piece|SPVM::Time::Piece>);>

=head2 strptime

C<static method strptime : L<Time::Piece|SPVM::Time::Piece> ($string : string, $format : string);>

=head1 Instance Methods

=head2 sec

C<method sec : int ();>

=head2 second

C<method second : int ();>

=head2 min

C<method min : int ();>

=head2 minute

C<method minute : int ();>

=head2 hour

C<method hour : int ();>

=head2 mday

C<method mday : int ();>

=head2 day_of_month

C<method day_of_month : int ();>

=head2 mon

C<method mon : int ();>

=head2 _mon

C<method _mon : int ();>

=head2 month

C<method month : string ($mon_list : string[] = undef);>

=head2 monname

C<method monname : string ($mon_list : string[] = undef);>

=head2 fullmonth

C<method fullmonth : string ($mon_list : string[] = undef);>

=head2 year

C<method year : int ();>

=head2 _year

C<method _year : int ();>

=head2 yy

C<method yy : int ();>

=head2 wday

C<method wday : int ();>

=head2 _wday

C<method _wday : int ();>

=head2 day_of_week

C<method day_of_week : int ();>

=head2 wdayname

C<method wdayname : string ($day_list : string[] = undef);>

=head2 day

C<method day : string ($day_list : string[] = undef);>

=head2 fullday

C<method fullday : string ($day_list : string[] = undef);>

=head2 yday

C<method yday : int ();>

=head2 day_of_year

C<method day_of_year : int ();>

=head2 isdst

C<method isdst : int ();>

=head2 daylight_savings

C<method daylight_savings : int ();>

=head2 tzoffset

C<method tzoffset : L<Time::Seconds|SPVM::Time::Seconds> ();>

=head2 hms

C<method hms : string ($sep : string = undef);>

=head2 time

C<method time : string ($sep : string = undef);>

=head2 ymd

C<method ymd : string ($sep : string = undef);>

=head2 date

C<method date : string ($sep : string = undef);>

=head2 mdy

C<method mdy : string ($sep : string = undef);>

=head2 dmy

C<method dmy : string ($sep : string = undef);>

=head2 datetime

C<method datetime : string ();>

=head2 julian_day

C<method julian_day : double ();>

=head2 mjd

C<method mjd : double ();>

=head2 _jd

C<method _jd : double ($tm : L<Sys::Time::Tm|SPVM::Sys::Time::Tm>);>

=head2 week

C<method week : int ();>

=head2 

C<method is_leap_year : int ();>

=head2 month_last_day

C<method month_last_day : int ();>

=head2 strftime

C<method method strftime : string ($format : string = undef);>

=head2 cdate

C<method cdate : string ();>

=head2 add

C<method add : L<Time::Piece|SPVM::Time::Piece> ($tsec : L<Time::Seconds|SPVM::Time::Seconds>);>

=head2 subtract

C<method subtract : L<Time::Piece|SPVM::Time::Piece> ($tsec : L<Time::Seconds|SPVM::Time::Seconds>);>

=head2 compare

C<method compare : int ($tp : L<Time::Piece|SPVM::Time::Piece>);>

=head2 add_months

C<method add_months : L<Time::Piece|SPVM::Time::Piece> ($num_months : int);>

=head2 add_years

C<method add_years : L<Time::Piece|SPVM::Time::Piece> ($years : int);>

=head2 truncate

C<method truncate : L<Time::Piece|SPVM::Time::Piece> ($options : object[]);>

=head2 clone

C<method clone : L<Time::Piece|SPVM::Time::Piece> ();>

=head1 Repository

L<SPVM::Time::Piece - Github|https://github.com/yuki-kimoto/SPVM-Time-Piece>

=head1 Author

Yuki Kimoto C<method kimoto.yuki@gmail.com>

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License

