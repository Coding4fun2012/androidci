FROM jenkins
# if we want to install via apt
USER root
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y lib32z1 lib32ncurses5 libncurses5-dev:i386
RUN apt-get install -y make gcc libtool
RUN apt-get install -y lib32stdc++6

# RUN apt-get update && apt-get install -y ruby make more-thing-here
USER jenkins
