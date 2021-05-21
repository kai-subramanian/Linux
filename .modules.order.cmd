cmd_/home/kailash/Linux/Week7/modules.order := {   echo /home/kailash/Linux/Week7/hello.ko; :; } | awk '!x[$$0]++' - > /home/kailash/Linux/Week7/modules.order
