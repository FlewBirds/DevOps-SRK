#!/bin/bash
 for i in $(kubectl get pods | awk '{if(NR>1)print $1}'); do
           echo Item: $(kubectl exec -it $i -- mkdir /var/log/myapplogs )
       done
