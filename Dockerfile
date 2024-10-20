FROM dboneslabs/utils

LABEL repository="https://github.com/dbones-labs/tools-docker-codecov"
LABEL maintainer="dbones labs" 

WORKDIR /app
RUN curl -o /app/codecov.sh -k https://codecov.io/bash
RUN chmod +x /app/*.sh 
RUN echo 'alias codecov="/app/codecov.sh"' >> ~/.bashrc