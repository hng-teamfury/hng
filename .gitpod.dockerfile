FROM gitpod/workspace-full:latest

RUN git clone https://github.com/jgodstime/team-fury-1.git \
  && ls \
  && ls /workspace/hng/ \
  && ls /workspaces/hng/ \
  && mv team-fury-1/* /workspace/hng/www

ENV APACHE_DOCROOT_IN_REPO="www"
