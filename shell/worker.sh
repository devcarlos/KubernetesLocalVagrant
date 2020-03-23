#!/usr/bin/env bash
# local kubernetes cluster
# version: 0.1.0
# description: this is the workers script file
# created by Carlos Alcala - carlos.alcala@me.com

KVMSG=$1
NODE=$2
WORKER_IP=$3
MASTER_TYPE=$4

if [ $MASTER_TYPE = "single" ]; then
    $(cat /vagrant/kubeadm-init.out | grep -A 2 "kubeadm join" | sed -e 's/^[ \t]*//' | tr '\n' ' ' | sed -e 's/ \\ / /g')
else
    $(cat /vagrant/workers-join.out | sed -e 's/^[ \t]*//' | tr '\n' ' ' | sed -e 's/ \\ / /g')
fi

echo KUBELET_EXTRA_ARGS=--node-ip=$WORKER_IP > /etc/default/kubelet
