FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

ARG AWS_KEY
ARG AWS_SECRET

USER root

RUN apt-get update
RUN apt-get install btfs s3fs python3-pip -y
RUN pip install awscli

WORKDIR /mnt

RUN mkdir torrent; mkdir s3

COPY run.sh .

RUN mkdir ~/.aws/; touch ~/.aws/credentials; echo [default] >> ~/.aws/credentials
RUN echo aws_access_key_id=$AWS_KEY >> ~/.aws/credentials
RUN echo aws_secret_access_key=$AWS_SECRET >> ~/.aws/credentials

CMD ["/bin/bash", "-c", "./run.sh"]