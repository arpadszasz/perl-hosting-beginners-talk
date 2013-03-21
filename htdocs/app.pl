#!perl

use 5.10.1;
use strict;
use utf8;
use warnings;
use Mojolicious::Lite;

get '/' => sub {
    my $self = shift;
    return $self->render('index');
};

get '/*page' => sub {
    my $self = shift;
    return $self->render( $self->param('page') );
};

app->start('cgi');
