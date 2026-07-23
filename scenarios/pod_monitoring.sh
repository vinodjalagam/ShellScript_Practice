#!/bin/bash
# Find all pods in CrashLoopBackOff.

#kubectl get pods --all-namespaces | grep "CrashLoopBackOff" | awk '{print "Namespace: " $1 ", Pod: " $2 ", Status: " $3}'

#!/bin/bash

# echo "===== Pods in CrashLoopBackOff ====="

# kubectl get pods -A | awk '$4=="CrashLoopBackOff" {print "Namespace: "$1,"\tPod: "$2}'

#!/bin/bash

PODS=$(kubectl get pods -A | awk '$4=="CrashLoopBackOff" {print $1, $2}') || exit 0

if [ -z "$PODS" ]
then
    echo "No pods are in CrashLoopBackOff state."
else
    echo "Pods in CrashLoopBackOff:"
    echo "$PODS"
fi