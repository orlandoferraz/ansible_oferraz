#!/usr/bin/awk -f

BEGIN {}

length($0) > 5 { 

  for(i=1;i<=NF;i++) {

    counter[total] = total

    if($i ~ /^iface$/) {
      total++
      iface[total]=$2
    }

    else if($i ~ /^address$/) {
      address[total]=$2
      done[total]="y"
    }
  }
}

END { for(entry in counter) {
         if(done[entry] == "y") {
             printf("%s=%s\n" ,iface[entry],address[entry])
         }
    }
}
