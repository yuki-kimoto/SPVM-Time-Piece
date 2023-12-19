package SPVM::Time::Seconds;



1;

=head1 Name

SPVM::Time::Seconds - Seconds

=head1 Description

The Time::Seconds class in L<SPVM> has methods to manipulate seconds to calculate dates and times.

=head1 Usage

  use Time::Piece;
  use Time::Seconds;
  
  my $tp = Time::Piece->localtime;
  $tp = $tp->add(Time::Seconds->ONE_DAY);
  
  my $tp2 = Time::Piece->localtime;
  my $tsec = $tp - $tp2;
  
  say "Difference is: " . $tsec->days;

=head1 Fields

C<has seconds : ro long;>

=head1 Class Methods

=head2 new

C<static method new : Time::Seconds ($second : long = 0);>

=head2 ONE_MINUTE

C<static method ONE_MINUTE : long ();>

=head2 ONE_HOUR

C<static method ONE_HOUR : long ();>

=head2 ONE_DAY

C<static method ONE_DAY : long ();>

=head2 ONE_WEEK

C<static method ONE_WEEK : long ();>

=head2 ONE_MONTH

C<static method ONE_MONTH : long ();>

=head2 ONE_YEAR

C<static method ONE_YEAR : long ();>

=head2 ONE_FINANCIAL_MONTH

C<static method ONE_FINANCIAL_MONTH : long ();>

=head2 LEAP_YEAR

C<static method LEAP_YEAR : long ();>

=head2 NON_LEAP_YEAR

C<static method NON_LEAP_YEAR : long ();>

=head1 Instance Methods

=head2 add

C<method add : Time::Seconds ($seconds : long);>

=head2 add_to

C<method add_to : void ($seconds : long);>

=head2 subtract

C<method subtract : Time::Seconds ($seconds : long);>

=head2 subtract_from

C<method subtract_from : void ($seconds : long);>

=head2 minutes

C<method minutes : double ();>

=head2 hours

C<method hours : double ();>

=head2 days

C<method days : double ();>

=head2 weeks

C<method weeks : double ();>

=head2 months

C<method months : double ();>

=head2 financial_months

C<method financial_months : double ();>

=head2 years

C<method years : double ();>

=head2 clone

C<method clone : Time::Seconds ();>

=head2 pretty

C<method pretty : string ();>

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License

