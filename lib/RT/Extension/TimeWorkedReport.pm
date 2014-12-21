package RT::Extension::TimeWorkedReport;

use 5.010001;
use strict;
use warnings;

=head1 NAME

    RT::Extension::TimeWorkedReport - summary of timespent on ticket for RT4

=cut

our $VERSION = '1.06';

1;

=head1 SUMMARY
    
This RT extension enables reports on time worked on Tickets by User.
   
    https://rt.example.com/Tools/Reports/TimeWorkedReport.html 
    
This plugin is configured for RT4.
For RT3.x see L<http://requesttracker.wikia.com/wiki/TimeWorkedReport>.


=head1 DESCRIPTION

This report allows the user to specify a datetime range and one or more queues,
and displays the time worked for each ticket in the selected queue(s) which has
> 0 minutes time worked in the datetime range. It will show non-superusers
their own report and superusers a report of all users.

It also will allow superusers to organize the report by ticket, with a
breakdown of the contributions to that ticket per-person, rather than the
default by-person organization.


=head1 INSTALL

    # Git install
    cd rt/local/plugins
    git clone https://github.com/coffeemonster/RT-Extension-TimeWorkedReport.git


    # Or .. download, make, install
    wget https://cpan.metacpan.org/authors/id/W/WE/WESAL/RT-Extension-TimeWorkedReport-1.04.tar.gz
    tar xzf RT-Extension-TimeWorkedReport-1.04.tar.gz
    cd RT-Extension-TimeWorkedReport-1.04
    perl Makefile.PL
    make
    make install


    # Enable Plugin - rt/etc/RT_SiteConfig.pm
    Plugin("RT::Extension::TimeWorkedReport");
    
    # restart web-server

    # View Reports
    "Menu > Tools > TimeWorkedReport"


=head1 SUPPORT

Version v1.06 was developed and tested against RT-4.2.9.

Please report any bugs to github:
L<https://github.com/coffeemonster/rt-extension-timeworkedreport>


=head1 SEE ALSO

http://search.cpan.org/dist/RT-Extension-ActivityReports/


=head1 LICENSE AND COPYRIGHT

Copyright 2000-2012 "Fran Fabrizio" <fabrizio-at-uab-dot-edu>
Copyright 2012-2014 "Alister West" <alister@alisterwest.com>

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=head1 CHANGES

This plugin started as a cpan-port of the original wiki extension at
L<http://requesttracker.wikia.com/wiki/TimeWorkedReport>

    1.06  2014-12-19 - Breakdown by day (coffeemonster)
    1.05  2014-10-08 - Adjusted to account for UTC time in tickets, and users local timezone (wrender)
       -  2013-05-08 - User dropdown only visable to superusers (coffeemonster)
    1.04  2013-05-08 - User dropdown to restrict to user (coffeemonster)
    1.03  2013-05-01 - Nest children if relation exists (coffeemonster)
                     - Match versions mentioned in TimeWorkedReport.html
    1.02  2012-12-12 - cpan-dist port by (coffeemonster)
    1.01  2000- 2012 - Created by "Fran Fabrizio"

=cut

