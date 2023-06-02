



# epic@.service
  
---  
```

[Unit]
Description=Starts the IRIS/Cache database and Epic daemons for %I.
ConditionFileIsExecutable=/epic/%i/bin/runlevel
ConditionFileIsExecutable=/epic/%i/bin/runlevel
After=local-fs.target ISCAgent.service
Wants=ISCAgent.service
RequiresMountsFor=/epic

[Service]
Type=oneshot
ExecStart=/usr/local/bin/shebang /epic/%i/bin/runlevel -r u
ExecStop=/usr/local/bin/shebang /epic/%i/bin/runlevel -r c
RemainAfterExit=yes
Restart=no

[Install]
WantedBy=default.target
  
```