ping:
	ansible all -i inventory.ini -u terris -m ping
install-git:
	ansible-playbook playbookInstall.yml -i inventory.ini
remove-git:
	ansible-playbook playbookRemove.yml -i inventory.ini
ssh-connect:
	ssh terris@158.160.22.126