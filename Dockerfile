# Base environment for an application
#
# VERSION               0.0.1

FROM      ubuntu
MAINTAINER Will Farrington <wfarr@github.com>

# base packages
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y curl git-core wget

# puppet
RUN wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb && dpkg -i puppetlabs-release-precise.deb
RUN apt-get update
RUN apt-get install -y puppet
