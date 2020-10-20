=pod
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=cut

package Car;
sub new {
   my $class = shift;
   my $self = {
      _wheels => shift,
      _doors  => shift,
      _cylinders       => shift,
   };
}
sub addWheels {
   my ( $self, $wheels ) = @_;
   $self->{_wheels} = $self->{_wheels} + $wheels if defined($wheels);
   return $self->{_wheels};
}
sub addDoors {
   my ( $self, $doors ) = @_;
   $self->{_doors} = $self->{_doors} + $doors if defined($doors);
   return $self->{_doors};
}
sub addCylinders {
   my ( $self, $cylinders ) = @_;
   $self->{_cylinders} = $self->{_cylinders} + $cylinders if defined($cylinders);
   return $self->{_cylinders};
}
sub deleteWheels {
   my ( $self, $wheels ) = @_;
   $self->{_wheels} = $self->{_wheels} - $wheels if defined($wheels);
   return $self->{_wheels};
}
sub deleteDoors {
   my ( $self, $doors ) = @_;
   $self->{_doors} = $self->{_doors} - $doors if defined($doors);
   return $self->{_doors};
}
sub deleteCylinders {
   my ( $self, $cylinders ) = @_;
   $self->{_cylinders} = $self->{_cylinders} - $cylinders if defined($cylinders);
   return $self->{_cylinders};
}

print "Creating car.\n";
$subaru = new Car(4, 4, 4);
bless $subaru, "Car";
print "Wheels check: $subaru->{_wheels}\n";
print "Doors check: $subaru->{_doors}\n";
print "Cylinders check: $subaru->{_cylinders}\n";
print "\n";
print "Adding wheel directly to car object.\n";
$subaru->{_wheels} = 5;
print "Wheels check: $subaru->{_wheels}\n";
print "Doors check: $subaru->{_doors}\n";
print "Cylinders check: $subaru->{_cylinders}\n";
print "\n";
print "Deleting wheel using class method.\n";
$subaru->deleteWheels(1);
print "Wheels check: $subaru->{_wheels}\n";
print "Doors check: $subaru->{_doors}\n";
print "Cylinders check: $subaru->{_cylinders}\n";
print "\n";

