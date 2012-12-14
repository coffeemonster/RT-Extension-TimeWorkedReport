package RT::Extension::TimeWorkedReport;

our $VERSION = '1.02';

1;

=head1 NAME

    RT::Extension::TimeWorkedReport - summary of tickets/user and time spent for RT4

    This plugin is configured for RT4.
    For RT3.x see L<http://requesttracker.wikia.com/wiki/TimeWorkedReport>.

=head1 SUMMARY

    This report allows the user to specify a datetime range and one or more queues,
    and displays the time worked for each ticket in the selected queue(s) which has
    > 0 minutes time worked in the datetime range. It will show non-superusers
    their own report and superusers a report of all users.

    It also will allow superusers to organize the report by ticket, with a
    breakdown of the contributions to that ticket per-person, rather than the
    default by-person organization.

=head1 INSTALLATION

    perl Makefile.PL
    make
    make install

    # Add to @Plugins list in etc/RT_SiteConfig.pm
    Set(@Plugins, (qw/RT::Extension::TimeWorkedReport ... 

    After restarting RT the TimeWorkedReport will be available under the Tools menu.

=head1 CHANGES

    This plugin is a port of the wiki extension by Fran Fabrizio at
    L<http://requesttracker.wikia.com/wiki/TimeWorkedReport> to a cpan distribution.

    Fran Fabrizio <fabrizio-at-uab-dot-edu> still maintains the wikipage.

    2012-12-12 v1.02
        - CPAN-ified by Alister West <alister@alisterwest.com>

=cut

