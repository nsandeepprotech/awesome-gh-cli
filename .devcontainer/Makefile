#docker variables
local_project_root := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
remote_project_root=/workspace
container_image=nsandeepprotech/bw:latest
volume=${local_project_root}:/$(remote_project_root) 

envsup:
#@code --install-extension
	@docker pull ${container_image}
	
get_secrets_bw:
	@$(eval BW_SESSION=$(shell bw login ${BW_CLIENTNAME} ${BW_CLIENTPASSWORD} --raw))
	@$(eval aws_username=$(shell bw get username aws --session ${BW_SESSION}))
	@echo ${aws_username}

rcheck:
	@hostname
	@uname -a
	@pwd
	@whoami


dkrtest:
	@docker run -it \
	-e BW_CLIENTNAME=$(shell echo ${BW_CLIENTNAME}) \
	-e BW_CLIENTPASSWORD=$(shell echo ${BW_CLIENTPASSWORD}) \
	-v ${volume} -w ${remote_project_root} ${container_image} make get_secrets_bw 