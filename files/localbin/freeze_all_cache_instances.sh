#!/usr/bin/env bash
set noclobber

date
fail=''

if which ccontrol &> /dev/null; then
  for inst in $(ccontrol qlist | grep running | cut -d '^' -f 1 | tr [:upper:] [:lower:]); do
    if [[ -f "/epic/$inst/bin/instfreeze" ]]; then
      "/epic/$inst/bin/instfreeze"
      if [[ $? -ne 0 ]]; then
        echo "$inst failed to freeze"
        fail+="$inst "
      fi
    else
      echo "Can't find instfreeze for $inst"
      fail+="$inst "
    fi
  done
  if [[ $fail -ne '' ]];then
    echo "$fail"
  fi
fi

if which iris &> /dev/null; then
  for inst in $(iris qlist | grep running | cut -d '^' -f 1 | tr [:upper:] [:lower:]); do
    if [[ -f "/epic/$inst/bin/instfreeze" ]]; then
      "/epic/$inst/bin/instfreeze"
      if [[ $? -ne 0 ]]; then
        echo "$inst failed to freeze"
        fail+="$inst "
      fi
    else
      echo "Can't find instfreeze for $inst"
      fail+="$inst "
    fi
  done
  if [[ $fail -ne '' ]];then
    echo "$fail"
  fi
fi

date
