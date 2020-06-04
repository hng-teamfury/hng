FROM gitpod/workspace-full:latest

ENV hngrepo=https://github.com/jgodstime/team-fury-1.git
ENV apacherepo=https://github.com/gitpod-io/apache-example.git
ENV APACHE_DOCROOT_IN_REPO="www"

RUN git clone ${apacherepo}; \
  cp apache-example/apache/apache.conf /etc/apache2/apache2.conf; \
  rm -rf apache-example/; \
  git clone ${hngrepo}; \
  mkdir -p /workspace/hng/; \
  mv team-fury-1/ /workspace/hng/www;
