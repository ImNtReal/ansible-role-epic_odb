



# csr.cnf.j2
  
---  
```

[ req ]
default_bits       = 2048
distinguished_name = req_distinguished_name
req_extensions     = req_ext
prompt = no
[ req_distinguished_name ]
C = US
ST = GA
L = Gainesville
O = Northeast Georgia Health System
OU = IT Dept.
CN = {{ ansible_fqdn }}
[ req_ext ]
keyUsage = keyEncipherment, dataEncipherment
extendedKeyUsage = serverAuth, clientAuth
subjectAltName = @alt_names
[alt_names]
DNS.1   = {{ ansible_fqdn }}
{% for item in epic_environments %}
DNS.{{ loop['index'] + 1 }}   = epic-{{ item['Environment'] | lower }}.nghs.com
{% endfor %}  
```