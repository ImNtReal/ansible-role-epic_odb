



# sudoers
  
---  
```

Cmnd_Alias EPIC_CMDS = /usr/bin/iris, /usr/bin/irissession, /usr/bin/ccontrol, /usr/bin/csession, /usr/bin/su - epicadm, /usr/bin/su - epicdmn, /usr/local/bin/snapenv, /usr/local/bin/cleansnap
%epicodba ALL=(ALL) ALL
epicadm ALL=(ALL) NOPASSWD: EPIC_CMDS
  
```