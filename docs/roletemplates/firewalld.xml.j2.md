



# firewalld.xml.j2
  
---  
```

<?xml version="1.0" encoding="utf-8"?>
<service>
  <short>{{ epic_firewall_short }}</short>
  <description>{{ epic_firewall_description }}</description>
{% for item in epic_firewall_ports %}
  <port protocol="{{ item['protocol'] | default('tcp') }}" port="{{ item['port'] }}"/>
{% endfor %}
</service>
  
```