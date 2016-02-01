FROM mariadb:10.1

ADD resources/run-mariadb-tutum-cluster.sh /

RUN chown -R mysql:mysql /var/lib/mysql

CMD ["/run-mariadb-tutum-cluster.sh"]