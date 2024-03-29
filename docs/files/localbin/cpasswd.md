



# cpasswd
  
---  
```

#!/usr/bin/env bash
set -Eeuo pipefail

function usage() {
  echo "Usage:"
  echo "  $0 [options] [INST] <accountName>"
  echo "  INST: Instance to change password in (e.g. TST)"
  echo "  accountName: Name of user whose password to change"
  echo "  options:"
  echo "    -a: Operate in all instances"
  echo
}

function change_password() {
  printf "d \$SYSTEM.Security.ChangePassword(\"$account\", \"$password\")\nh\n" | csession $instance -U '%SYS'
}

all_instances() {
  for instance in $(ccontrol qlist | cut -d '^' -f 1); do
    echo $instance
    change_password
  done
}

if [[ $# != 2 ]]; then
  usage
  exit 1
fi

allinstances=0
instance=''

case $1 in
  '-a')
    allinstances=1
  ;;
  *)
    instance=$1
  ;;
esac

account=$2

if [[ $allinstances == 1 ]]; then
  echo "Changing password for user ${account} in all instances."
else
  echo "Changing password for user ${account} in ${instance}."
fi
echo -n "New password: "
read password

if [[ $allinstances == 1 ]]; then
  all_instances
else
  change_password
fi

exit 0
  
```