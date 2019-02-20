FROM centos:7
RUN yum install -y java-1.8.0-openjdk-headless maven
RUN yum install -y gcc-c++ which make
RUN rpm --import "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF" && su -c 'curl https://download.mono-project.com/repo/centos7-stable.repo | tee /etc/yum.repos.d/mono-centos7-stable.repo' && yum -y install mono-devel
