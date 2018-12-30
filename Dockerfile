# base
FROM debian:buster
RUN apt-get update -qq && apt-get upgrade -y && apt-get install -qq -y \
	apt-transport-https \
	build-essential \
	ca-certificates \
	curl \
	dnsutils \
	docker-compose \
	docker.io \
	gdb \
	git \
	git-crypt \
	golang-1.11 \
	htop \
	ipcalc \
	jq \
	ncdu \
	openssh-server \
	socat \
	sudo \
	tmux \
	tree \
	vim-nox \
	wget \
	zsh \
	--no-install-recommends

ARG user=eman
ARG uid=1000
ARG github_user=ericmanlol
RUN useradd -m $user -u $uid -G users,sudo,docker -s /bin/zsh

USER $user
RUN mkdir ~/.ssh && curl -fsL https://github.com/$github_user.keys > ~/.ssh/authorized_keys && chmod 0700 ~/.ssh && chmod 0600 ~/.ssh/authorized_keys

#USER root

