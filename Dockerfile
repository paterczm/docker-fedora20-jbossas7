FROM fedora:20
MAINTAINER paterczm <paterczm@users.noreply.github.com>

RUN yum install unzip java -y
RUN curl -o /opt/jboss.zip http://download.jboss.org/jbossas/7.1/jboss-as-7.1.1.Final/jboss-as-7.1.1.Final.zip
RUN cd /opt && unzip jboss.zip
RUN cd /opt && ln -s jboss-as-7.1.1.Final jbossas7

