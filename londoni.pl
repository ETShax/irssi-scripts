use Encode;
use strict;
use Irssi;
use vars qw($VERSION %IRSSI);

use Irssi;
$VERSION = '1.00';
%IRSSI = (
    authors     => 'Perttu Rautaniemi',
    contact     => 'author@far.away',
    name        => 'My First Script',
    description => 'This script allows ' .
                   'you to print words characters ' .
                   'separated to multiple lines ',
    license     => 'GPL',
);
sub lontoo {
    my ($data, $server, $witem) = @_;
    return unless $witem;
	my @string = split undef, $data;
	for(my $i = 0; $i < @string.length; $i++){
        	if ($i == 0){$witem->command("MSG ".$witem->{name}." @string");}
        	else{$witem->command("MSG ".$witem->{name}." @string[$i]");}
	}

}

Irssi::command_bind londoni => \&lontoo;
