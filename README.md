ansible-crontab
==============

Set up crontab.

Installs the default Ubuntu crontab, but with adjustable hour-of-day.

The system default is to run daily tasks at 6:25, weekly tasks at 6:47 and
monthly tasks at 6:52; depending on the timezone the server is running and
the workload pattern this might not be suitable.

This role's default set the hour to 19 UTC.

Requirements
------------

No special pre-requisites.

Role Variables
--------------

    - name: crontab_hour
      default: 19 # 7 PM UTC
      description: The hour of day to run daily/weekly/monthly cron jobs

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - role: shared/crontab
           crontab_hour: 19

