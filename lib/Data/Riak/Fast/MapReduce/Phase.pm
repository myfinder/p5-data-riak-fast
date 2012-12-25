package Data::Riak::Fast::MapReduce::Phase;

use Mouse::Role;

=head1 DESCRIPTION

The Phase role contains common code used by all the Data::Riak::Fast::MapReduce
phase classes.

=attr keep

Flag controlling whether the results of this phase are included in the final
result of the map/reduce.

=method pack

The C<pack> method is required to be implemented by consumers of this role.

=cut

has keep => (
    is => 'rw',
    isa => 'Bool',
    predicate => 'has_keep',
);

requires 'pack';

no Mouse::Role; 1;
