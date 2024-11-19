rm -rf .terraform/
rm terraform.tfstate terraform.tfstate.backup
rm -rf ~/.config/VirtualBox/*
rm -rf /home/gstvxx/.terraform/virtualbox/
rm /home/gstvxx/.config/VirtualBox/VirtualBox.xml

VBoxManage unregistervm "master-1" --delete
VBoxManage unregistervm "master-2" --delete
VBoxManage unregistervm "master-3" --delete
VBoxManage unregistervm "worker-1" --delete
VBoxManage unregistervm "worker-2" --delete

rm -f /home/gstvxx/.terraform/virtualbox/machine/master-1/*.vmdk
rm -f /home/gstvxx/.terraform/virtualbox/machine/master-2/*.vmdk
rm -f /home/gstvxx/.terraform/virtualbox/machine/master-3/*.vmdk
rm -f /home/gstvxx/.terraform/virtualbox/machine/worker-1/*.vmdk
rm -f /home/gstvxx/.terraform/virtualbox/machine/worker-2/*.vmdk