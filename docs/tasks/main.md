



# main.yml


* create Epic groups

* create cachegrp

* create irisusr

* create Epic users

* Block: Install packages for Red Hat distros

    * ensure packges needed for Epic and role are installed  
**<font color="green">Tags: </font>**

* Block: Install packages for Red Hat distros

    * ensure packages needed for Epic and role are installed

* gather package facts

* load service facts

* Block: configure EL < 8

    * stop and disable tuned

    * configure security limits

    * check and config sysctl

    * configure hugepage size

    * disable alt+ctrl+del

    * Add transparent_hugepage setting to kernel command line

    * copy Epic sudoers file

* Block: configure EL > 7

    * configure hugepage group

    * configure number of hugepages

* create /usr/local/epic

* create core dump directory

* create epicfiles directory

* create epic directory

* create bin directory  
<font color="green">Tags: </font>epicmenu

* create /epic/tmp directory

* create /epic/pki

* ensure encryption keys directory exists

* set default file context for bin directories

* set default file context for instance bin directories

* install service files

* make sure epic@.service is enabled

* enable redalert.service

* check sslcert binary

* check RedAlert conf file

* get ESMP_TRUSTED_DIR

* get contents of ESMP_TRUSTED_DIR

* Block: get CA bundle from uri

    * copy CA bunle from {{ ca_bundle }}

* Block: get CA bundle from file

    * check for CA bundle

    * copy CA certs

* Get selinux port tags for ssh_port_t

* enable SSH on port 2222 in selinux

* create /etc/ssh

* disable root login over SSH

* explicily enable port 22

* set sshd to listen on port 2222

* set port 2222 to sftp only

* set epic menus for groups

* set epic menus for users

* copy /usr/local/bin files

* create manage_epicuser_group

* add cron job for manage_epicuser_group

* add audit lines to PAM files

* create working copy of system sudoers file

* back up sudoers file

* remove Defaults requiretty

* check for sudoers differences

* Check working copy of suders file, and replace active sudoers config

* refresh service facts  
<font color="green">Tags: </font>firewall

* start firewalld  
<font color="green">Tags: </font>firewall

* ufw started  
<font color="green">Tags: </font>firewall

* Setup firewall rules  
<font color="green">Tags: </font>firewall

* refresh service facts  
<font color="green">Tags: </font>firewall

* Block: Enable firewall rules on EL

    * reload firewalld  
**<font color="green">Tags: </font>**

* Block: Enable firewall rules on Ubuntu

    * reload firewalld  
**<font color="green">Tags: </font>**

* get status of /etc/vmware-tools directory

* copy tools.conf

* Generate private key

* Generate CSR

* check for chrony.conf

* Block: update chrony config

    * disable makestep

    * set minsources to 2

    * set logchange to 0.5

* create conf directory  
<font color="green">Tags: </font>epicmenu

* install epicmenu confs  
<font color="green">Tags: </font>epicmenu

* ensure links exists for epicmenus  
<font color="green">Tags: </font>epicmenu

* install environment epicmenus  
<font color="green">Tags: </font>epicmenu