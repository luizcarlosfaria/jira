FROM openjdk:8

ENV ATLASSIAN_HOME  /opt/atlassian
ENV JIRA_INSTALL    /opt/atlassian/jira
ENV JIRA_HOME     	/var/atlassian/application-data/jira
ENV JIRA_VERSION  	7.3.0
ENV TIME_ZONE 		America/Sao_Paulo

ADD https://downloads.atlassian.com/software/jira/downloads/atlassian-jira-software-${JIRA_VERSION}.tar.gz ${ATLASSIAN_HOME}
#ADD http://192.168.1.77/atlassian-jira-software-${JIRA_VERSION}.tar.gz ${ATLASSIAN_HOME}/

RUN ls /opt/atlassian -l

RUN tar -xzf ${ATLASSIAN_HOME}/atlassian-jira-software-${JIRA_VERSION}.tar.gz -C ${ATLASSIAN_HOME}/ \
&& ls /opt/atlassian -l

RUN mv ${ATLASSIAN_HOME}/atlassian-jira-software-${JIRA_VERSION}-standalone ${JIRA_INSTALL} \
&& chmod -R u=rwx,go-rwx ${JIRA_INSTALL} \
&& mkdir -p ${JIRA_HOME} \
&& chmod -R u=rwx,go-rwx ${JIRA_HOME} \
&& echo "jira.home = ${JIRA_HOME}" > ${JIRA_INSTALL}/atlassian-jira/WEB-INF/classes/jira-application.properties \
&& cat ${JIRA_INSTALL}/atlassian-jira/WEB-INF/classes/jira-application.properties \
&& sed --in-place "s/java version/openjdk version/g" "${JIRA_INSTALL}/bin/check-java.sh" \
&& echo "${TIME_ZONE}" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

EXPOSE 8080 8005
VOLUME ["${JIRA_HOME}", "${JIRA_INSTALL}"]
WORKDIR ${JIRA_INSTALL}/bin
ENTRYPOINT ["./start-jira.sh", "-fg"]