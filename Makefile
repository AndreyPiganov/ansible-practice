ping:
	ansible all -i inventory.ini -u terris -m ping
install-git:
	ansible-playbook playbookInstall.yml -i inventory.ini
remove-git:
	ansible-playbook playbookRemove.yml -i inventory.ini
ssh-connect-ubuntu:
	ssh terris@158.160.75.21
main:
	ansible-playbook playbookMain.yml -i inventory.ini
check-main-ci:
	ansible-playbook --check playbookMain.yml -i inventory.ini -t ci
main-ci:
	ansible-playbook playbookMain.yml -i inventory.ini -t ci
nginx:
	ansible-playbook playbookNginx.yml -i inventory.ini
check-vars:
	ansible-inventory -i inventory.ini --list
users:
	ansible-playbook playbookUsers.yml -i inventory.ini
ssh-connect-cent:
	ssh terris@158.160.8.146
other:
	ansible-playbook playbookOther.yml -i inventory.ini