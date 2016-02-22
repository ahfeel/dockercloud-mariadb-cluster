FROM mariadb:10.1

RUN apt-get update && \
	apt-get install -y curl && \
	apt-get -y clean 

ADD resources/run-mariadb-tutum-cluster.sh /
RUN mv /etc/mysql/my.cnf /etc/mysql/my.cnf.orig
ADD resources/my.cnf /etc/mysql/

EXPOSE 3306 4567 4568 4444

CMD ["/run-mariadb-tutum-cluster.sh"]
