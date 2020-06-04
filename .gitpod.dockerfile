FROM gitpod/workspace-full:latest

ENV hngrepo=https://github.com/jgodstime/team-fury-1.git
ENV apacherepo=https://github.com/gitpod-io/apache-example.git
ENV APACHE_DOCROOT_IN_REPO="www"

RUN git clone ${apacherepo}; \
  mv apache-example/apache ./; \
  rm -rf apache-example/; \
  git clone ${hngrepo}; \
  mv team-fury-1/ www;

COPY /apache/apache.conf /etc/apache2/apache2.conf
