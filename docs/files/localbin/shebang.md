



# shebang
  
---  
```

#! /usr/bin/env bash

$(grep '\#\!' $1 | sed 's/#!//g' | awk '{print $1}') $@
  
```