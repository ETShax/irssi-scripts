use utf8;
use Encode;
use strict;
use Irssi;
use vars qw($VERSION %IRSSI);

use Irssi;
$VERSION = '1.00';
%IRSSI = (
    authors     => 'A. U. Thor',
    contact     => 'author@far.away',
    name        => 'My First Script',
    description => 'This script allows ' .
                   'you to print Hello ' .
                   'World using a command.',
    license     => 'Public Domain',
);
sub lontoo {
    my ($data, $server, $witem) = @_;
    return unless $witem;
    my $string = encode("utf8", $data);
	my @string = split undef, $string;
	for(my $i = 0; $i < @string.length; $i++){
        if ($i == 0){$witem->command("MSG ".$witem->{name}." @string");}
        else{$witem->command("MSG ".$witem->{name}." @string[$i]");}
	}

}

Irssi::command_bind londoni => \&lontoo;
