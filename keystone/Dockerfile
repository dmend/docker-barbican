FROM fedora:25

MAINTAINER Douglas Mendizábal <douglas@redrobot.io>

# Install psycopg2
RUN dnf install -y https://yum.postgresql.org/9.6/fedora/fedora-25-x86_64/pgdg-fedora96-9.6-3.noarch.rpm
RUN dnf install -y gcc postgresql96-devel python-devel python-pip redhat-rpm-config
RUN PATH=$PATH:/usr/pgsql-9.6/bin pip install psycopg2

# Install cryptography deps
RUN dnf install -y libffi-devel openssl-devel

# Install keystone
ADD scripts/run.sh /opt/keystone/run.sh
ADD keystone-11.0.0.tar.gz /src
RUN pip install /src/keystone-11.0.0
RUN cp -r /src/keystone-11.0.0/etc /etc/keystone
RUN cp /etc/keystone/keystone.conf.sample /etc/keystone/keystone.conf

EXPOSE 8000
CMD ["/opt/keystone/run.sh"]
