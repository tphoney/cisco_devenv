#!/bin/sh

ssh -F files/switch.ssh-config n9kv1 'sudo rm -rf /nxos/tmp/*'
scp -F files/switch.ssh-config -r netdev_stdlib n9kv1:/nxos/tmp
ssh -F files/switch.ssh-config n9kv1 'sudo rm -rf /etc/puppetlabs/code/modules/netdev_stdlib'
ssh -F files/switch.ssh-config n9kv1 'sudo rm -rf /nxos/tmp/netdev_stdlib/.git'
ssh -F files/switch.ssh-config n9kv1 'sudo mv /nxos/tmp/netdev_stdlib /etc/puppetlabs/code/modules'
