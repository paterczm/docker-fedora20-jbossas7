FROM fedora:20
MAINTAINER paterczm <paterczm@users.noreply.github.com>

RUN yum install unzip java -y && yum clean all -y
RUN curl -o /opt/jboss.zip http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.zip \
  && cd /opt/ \
  && unzip jboss.zip \
  && rm -f jboss.zip
RUN cd /opt && ln -s jboss-as-7.1.1.Final jbossas7

ADD mgmt-users.properties /opt/jbossas7/standalone/configuration/
