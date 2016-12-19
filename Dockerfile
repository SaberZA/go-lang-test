FROM SaberZA/docker-go-lang-test

ARG GIT_COMMIT
ARG VERSION
LABEL REPO="https://github.com/SaberZA/go-lang-test"
LABEL GIT_COMMIT=$GIT_COMMIT
LABEL VERSION=$VERSION

# Because of https://github.com/docker/docker/issues/14914
ENV PATH=$PATH:/opt/go-lang-test/bin

WORKDIR /opt/go-lang-test/bin

COPY bin/go-lang-test /opt/go-lang-test/bin/
RUN chmod +x /opt/go-lang-test/bin/go-lang-test

CMD /opt/go-lang-test/bin/go-lang-test