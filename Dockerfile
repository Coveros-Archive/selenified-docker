FROM hesperus/xvfb

RUN apt-get -qqy update && \
    apt-get -qqy install firefox=45.0.2+build1-0ubuntu1 openjdk-8-jdk maven

ADD test.sh /tmp/tests/test.sh

WORKDIR /tmp/tests

ENTRYPOINT ./test.sh