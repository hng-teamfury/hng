FROM gitpod/workspace-full:latest

RUN git clone git@github.com:jgodstime/team-fury-1.git \
  && mv team-fury-1/* www

ENV APACHE_DOCROOT_IN_REPO="www"
