ping:
	ansible all -i inventory.ini -u terris -m ping
install-git:
	ansible-playbook playbookInstall.yml -i inventory.ini
remove-git:
	ansible-playbook playbookRemove.yml -i inventory.ini
ssh-connect:
	ssh terris@84.252.143.233
main:
	ansible-playbook playbookMain.yml -i inventory.ini
check-main-ci:
	ansible-playbook --check playbookMain.yml -i inventory.ini -t ci
main-ci:
	ansible-playbook playbookMain.yml -i inventory.ini -t ci
nginx:
	ansible-playbook playbookNginx.yml -i inventory.ini