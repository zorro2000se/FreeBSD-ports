#!/bin/sh
#
# $FreeBSD$
#

# PROVIDE: dbmail-pop3d
# REQUIRE: DAEMON
# KEYWORD: shutdown

#
# Add the following lines to /etc/rc.conf to enable dbmail-pop3d: 
#
#dbmail_pop3d_enable="YES"
#
# See dbmail-pop3d(8) for flags
#

. %%RC_SUBR%%

name=dbmail_pop3d
rcvar=`set_rcvar`

command=%%PREFIX%%/sbin/dbmail-pop3d
pidfile=/var/run/dbmail-pop3d.pid
required_files=%%PREFIX%%/etc/dbmail.conf

# read settings, set default values
load_rc_config "$name"
: ${dbmail_pop3d_enable="NO"}
: ${dbmail_pop3d_flags=""}

run_rc_command "$1"
