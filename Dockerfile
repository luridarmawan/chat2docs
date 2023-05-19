# build:
#  docker build . -t chat2doc-ex
#
# run
#  docker run -it --rm --name c2d -p 8088:8088 chat2doc-ex

FROM luri/chat2docs AS base

WORKDIR /workspace
ADD . /workspace

# Initializing
ADD http://date.jsontest.com /etc/builddate
RUN sh initialize.sh /etc/builddate

#CMD [ "python3" , "/workspace/test.py" ]
