JBoss AS 7 on Fedora 20 with java 7

To start it:
```
$ sudo docker run -p 8080:8080 -d paterczm/docker-fedora20-jbossas7 /opt/jbossas7/bin/standalone.sh -b 0.0.0.0
```

If you need cli interface:
```
$ sudo docker run -p 9999:9999 -p 8080:8080 -d paterczm/docker-fedora20-jbossas7 /opt/jbossas7/bin/standalone.sh -b 0.0.0.0 -Djboss.bind.address.management=0.0.0.0
```

The login password to cli is admin/redhat.

If you need remote socket debugging:
```
$ sudo docker run -p 8080:8080 -p 8787:8787 -d paterczm/docker-fedora20-jbossas7 /opt/jbossas7/bin/standalone.sh -b 0.0.0.0
```
