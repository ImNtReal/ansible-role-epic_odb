



# main.yml
  
---
## useepicatservice
  
```

false
...
  
```
## members_command
  
```

getent group
...
  
```
## members_filter
  
```

'| cut -d '':'' -f 4 | sed ''s/,/

  /g'''
  
```
## ca_bundle
  
```

https://letsencrypt.org/certs/isrgrootx1.pem
...
  
```
## epic_csr
  
```

c: US
l: Verona
o: Epic
ou: IT
s: Wisconsin
  
```
## cachegrp
  
```

false
...
  
```
## epic_users
  
```

- comment: Epic Admin
  group: epicsys
  groups: epicuser,irisusr,dmngrp
  password: '{{ epic_passwords[''epicadm''] }}'
  state: present
  uid: 10000
  user: epicadm
- comment: Epic Daemon
  group: epicuser
  groups: dmngrp
  password: '{{ epic_passwords[''epicdmn''] }}'
  state: present
  uid: 10001
  user: epicdmn
- comment: Epic Tempmlate
  group: epicuser
  groups: users
  password: '{{ epic_passwords[''epicsupt''] }}'
  state: present
  uid: 10002
  user: epicsupt
- comment: Epic Text
  group: epicuser
  groups: users
  password: '{{ epic_passwords[''epictxt''] }}'
  state: present
  uid: 10003
  user: epictxt
- comment: Epic iscagent
  group: iscagent
  groups: users
  password: '{{ epic_passwords[''iscagent''] }}'
  state: present
  uid: 10004
  user: iscagent
  
```