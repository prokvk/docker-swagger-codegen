FROM alpine:3.4

VOLUME /.cache

# Install dependencies 
RUN apk --update add curl bash wget openjdk8-jre-base

ENV JAVA_HOME /opt/jdk
ENV PATH ${PATH}:/opt/jdk/bin	

RUN wget https://oss.sonatype.org/content/repositories/releases/io/swagger/swagger-codegen-cli/2.2.1/swagger-codegen-cli-2.2.1.jar

CMD java -jar swagger-codegen-cli-2.2.1.jar help