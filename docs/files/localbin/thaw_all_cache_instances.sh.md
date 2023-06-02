



# thaw_all_cache_instances.sh
  
---  
```

#!/usr/bin/env bash
set noclobber

date
fail=''

if which ccontrol &> /dev/null; then
  for inst in $(ccontrol qlist | grep running | cut -d '^' -f 1 | tr [:upper:] [:lower:]); do
    if [[ -f "/epic/$inst/bin/instthaw" ]]; then
      "/epic/$inst/bin/instthaw"
      if [[ $? -ne 0 ]]; then
        echo "$inst failed to thaw"
        fail+="$inst "
      fi
    else
      echo "Can't find instthaw for $inst"
      fail+="$inst "
    fi
  done
  if [[ $fail -ne '' ]]; then
    echo $fail
  fi
fi

if which iris &> /dev/null; then
  for inst in $(iris qlist | grep running | cut -d '^' -f 1 | tr [:upper:] [:lower:]); do
    if [[ -f "/epic/$inst/bin/instthaw" ]]; then
      "/epic/$inst/bin/instthaw"
      if [[ $? -ne 0 ]]; then
        echo "$inst failed to thaw"
        fail+="$inst "
      fi
    else
      echo "Can't find instthaw for $inst"
      fail+="$inst "
    fi
  done
  if [[ $fail -ne '' ]]; then
    echo $fail
  fi
fi

date
  
```