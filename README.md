Ansible Role: Epic ODB
========
![Build Status](https://github.com/ImNtReal/ansible-role-epic_odb/actions/workflows/main.yml/badge.svg)

This role will prepare RHEL servers to act as Epic ODB servers.

Requirements
------------

To run the role successfully against RHEL 8+ or Ubuntu, you will need to pre-install the epic-config package,
or have it hosted on a repository already installed on the hosts.

Role Variables
--------------

Found in `defaults/main.yml` (can be overridden in inventory):

    useepicatservice: Whether to use epic@.service as opposed to epic.service for starting instance(s) on the server.

Found in `vars/main.yml`:

    epic_users: Local Epic specific accounts to be setup on each ODB server.

Variables set only in inventory:

    odb_instances: List of instances on server.
    epic_environments: List of Epic environments along with their respective instances
    nr_hugepages: Number of hugepages
    firewalld_services: Definition of firewalld services to create
    epic_passwords: Password hashes for local accounts. Hashes for RHEL 7 can be
      generated using: openssl passwd -6 on openssl v1.1 or newer or examples found
      here: https://unix.stackexchange.com/a/76337/358648
    forced_epicusers: Users to be added to epicuser group
    epicuser_groups: Groups of users to be added to epicuser group

Dependencies
------------

No other roles are required

Example Playbook
----------------

inventory:

    ---
    odb:
      epic-prd:
        odb_instances:
          - 'prd'

        epic_environments:
          - { Instance: 'PRD', Environment: 'PRD' }

        nr_hugepages: 112763

        # These should be stored in a vault somewhere
        epic_passwords:
          epicadm: $6$CAuJvjioZaK6OfAI$hcU2HIzJG2e8ZaqcUATQ0UzFZPcFrOlUnLC7OV13Ect0A.KKVUC1lRK4KfF26u3r8iZClZOlREwhj4w5kQaVY/
          epicdmn: $6$W6CPWrIRuKp4VxDK$imCJgLaHLcvXXPx9EbPEalmIe5kBE9H6UbOuisfuuU4vwuFot9n7e7YQUUHnC41QkP3a4JUUtUVkWcsTtLynC1
          epicsupt: $6$htfX4OnvYGmVTii.$0G81Mp6svyullK3JPwXvBaSbCvh1FOVZnBVYzMWgk14AiSxtjYUWER4de2w989zX7K1zEPebdTYROhoPqui311
          epictxt: $6$Xi.mHrTLDgFNPq8X$SbLerE4LBeCGNoCvTkksYl6DyPuKcaS4ZT.Tlg9ZWQItmBQup5I5XY60GpareUyX8Cg0EnIYfpSfz3G.dCHU11
          iscagent: $6$Z8Q4GIqVUkSx71Ig$DqzrkYG5F3.lpnBBptsVX0grwistyWJOo7JfHS5tgqGbBH9uVAJSSi8i5eMQARcLHvt7x335MzE.Ln9SVAKY30

        forced_epicusers:
          - some_ad_user

        epicuser_groups:
          - some_ad_group

        odb_firewall_services:
          - name: epiccomm
            description: EpicComm
            ports:
              - {port: 6050}
          - name: licensing
            description: Epic Licensing Server
            ports:
              - {port: 4001, protocol: 'udp'}
          - name: procedure-logs
            description: Epic Procedure Logs
            ports:
              - {port: 11913}
          - name: redalert
            description: Epic Red Alert Monitoring Agent
            ports:
              - {port: 10443}
          - name: isc-mirroring
            description: Cache' ISC Agent Mirroring
            ports:
              - {port: 2188}
          - name: superserver
            description: Cache' Superserver
            ports:
              - {port: 1950}
          - name: webserver
            description: Cache' Webserver
            ports:
              - {port: 4950}
          - name: bridges
            description: Epic Bridges
            ports:
              - {port: 1751}
              - {port: 3101}
          - name: datacourier
            description: Epic Datacourier
            ports:
              - {port: 65000}
              - {port: 65111}

playbook:

    - hosts: odb
      roles: epic_odb

License
-------

MIT

Author Information
------------------

Jameson Pugh <imntreal@gmail.com>