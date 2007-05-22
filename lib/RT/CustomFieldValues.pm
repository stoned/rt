# BEGIN BPS TAGGED BLOCK {{{
# 
# COPYRIGHT:
#  
# This software is Copyright (c) 1996-2007 Best Practical Solutions, LLC 
#                                          <jesse@bestpractical.com>
# 
# (Except where explicitly superseded by other copyright notices)
# 
# 
# LICENSE:
# 
# This work is made available to you under the terms of Version 2 of
# the GNU General Public License. A copy of that license should have
# been provided with this software, but in any event can be snarfed
# from www.gnu.org.
# 
# This work is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
# 
# 
# CONTRIBUTION SUBMISSION POLICY:
# 
# (The following paragraph is not intended to limit the rights granted
# to you to modify and distribute this software under the terms of
# the GNU General Public License and is only of importance to you if
# you choose to contribute your changes and enhancements to the
# community by submitting them to Best Practical Solutions, LLC.)
# 
# By intentionally submitting any modifications, corrections or
# derivatives to this work, or any other work intended for use with
# Request Tracker, to Best Practical Solutions, LLC, you confirm that
# you are the copyright holder for those contributions and you grant
# Best Practical Solutions,  LLC a nonexclusive, worldwide, irrevocable,
# royalty-free, perpetual, license to use, copy, create derivative
# works based on those contributions, and sublicense and distribute
# those contributions and any derivatives thereof.
# 
# END BPS TAGGED BLOCK }}}
# Autogenerated by DBIx::SearchBuilder factory (by <jesse@bestpractical.com>)
# WARNING: THIS FILE IS AUTOGENERATED. ALL CHANGES TO THIS FILE WILL BE LOST.  
# 
# !! DO NOT EDIT THIS FILE !!
#

use strict;


=head1 NAME

  RT::CustomFieldValues -- Class Description
 
=head1 SYNOPSIS

  use RT::CustomFieldValues

=head1 DESCRIPTION


=head1 METHODS

=cut

package RT::CustomFieldValues;

use RT::SearchBuilder;
use RT::CustomFieldValue;

use vars qw( @ISA );
@ISA= qw(RT::SearchBuilder);


sub _Init {
    my $self = shift;
    $self->{'table'} = 'CustomFieldValues';
    $self->{'primary_key'} = 'id';

    # By default, order by SortOrder
    $self->OrderByCols(
         { ALIAS => 'main',
           FIELD => 'SortOrder',
           ORDER => 'ASC' },
         { ALIAS => 'main',
           FIELD => 'Name',
           ORDER => 'ASC' },
         { ALIAS => 'main',
           FIELD => 'id',
           ORDER => 'ASC' },
    );

    return ( $self->SUPER::_Init(@_) );
}


=head2 NewItem

Returns an empty new RT::CustomFieldValue item

=cut

sub NewItem {
    my $self = shift;
    return(RT::CustomFieldValue->new($self->CurrentUser));
}

        eval "require RT::CustomFieldValues_Overlay";
        if ($@ && $@ !~ qr{^Can't locate RT/CustomFieldValues_Overlay.pm}) {
            die $@;
        };

        eval "require RT::CustomFieldValues_Vendor";
        if ($@ && $@ !~ qr{^Can't locate RT/CustomFieldValues_Vendor.pm}) {
            die $@;
        };

        eval "require RT::CustomFieldValues_Local";
        if ($@ && $@ !~ qr{^Can't locate RT/CustomFieldValues_Local.pm}) {
            die $@;
        };




=head1 SEE ALSO

This class allows "overlay" methods to be placed
into the following files _Overlay is for a System overlay by the original author,
_Vendor is for 3rd-party vendor add-ons, while _Local is for site-local customizations.  

These overlay files can contain new subs or subs to replace existing subs in this module.

Each of these files should begin with the line 

   no warnings qw(redefine);

so that perl does not kick and scream when you redefine a subroutine or variable in your overlay.

RT::CustomFieldValues_Overlay, RT::CustomFieldValues_Vendor, RT::CustomFieldValues_Local

=cut


1;
