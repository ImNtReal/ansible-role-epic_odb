



# redalert.service
  
---  
```

[Unit]
Description=Epic RedAlert service
After=ntpd.service local-fs.target

[Service]
User=epicadm
Group=epicsys
ExecStart=/epic/redalert/bin/ra_sched --start --nodaemon
ExecStop=/epic/redalert/bin/ra_sched --stop
KillMode=none

[Install]
WantedBy=default.target
  
```