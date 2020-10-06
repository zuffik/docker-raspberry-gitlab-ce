FROM balenalib/raspberry-pi

WORKDIR /usr/src/app

ENV TERM=xterm

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y curl openssh-server ca-certificates apt-transport-https xterm
RUN curl https://packages.gitlab.com/gpg.key | apt-key add -
RUN curl -sS https://packages.gitlab.com/install/repositories/gitlab/raspberry-pi2/script.deb.sh | bash
RUN apt-get install -y gitlab-ce
RUN gitlab-ctl stop

EXPOSE 443 22 80

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure
