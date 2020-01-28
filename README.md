Role Name
=========

This role will prepare RHEL servers to act as Epic ODB servers.

Requirements
------------

No extra packages required.

Role Variables
--------------

Found in `defaults/main.yml` (can be overridden in inventory):

    useepicatservice: Whether to use epic@.service as opposed to epic.service for starting instance(s) on the server.

Found in `vars/main.yml`:

    epic_users: Local Epic specific accounts to be setup on each ODB server.

Variables set only in inventory:

    CacheInstances: List of instances on server.
    EpicEnvironments: List of Epic environments along with their respective instances
    nr_hugepages: Number of hugepages
    firewalld_services: Definition of firewalld services to create

Dependencies
------------

No other roles are required

Example Playbook
----------------

inventory:

    ---
    odb:
      epic-prd:
        CacheInstances:
          - 'prd'

        EpicEnvironments:
          - { Instance: 'PRD', Environment: 'PRD' }

        nr_hugepages: 112763

        firewalld_services:
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

GPLv3+

Author Information
------------------

Jameson Pugh <imntreal@gmail.com>
