#!/bin/bash

for i in kmaster0 kworker1 kworker2
do 
        echo -------------------------------- Reboot the k8s cluster node: $i ---------------------------
	ssh $i "sudo shutdown -h now"
done
