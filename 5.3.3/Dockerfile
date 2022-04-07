FROM ubuntu:18.04

LABEL "MAINTAINER"="icaoberg"
LABEL "EMAIL"="icaoberg@psc.edu"
LABEL "SUPPORT"="help@psc.edu"
LABEL "REPOSITORY"="http://github.com/pscedu/singularity-meme-suite"
LABEL "COPYRIGHT"="Copyright © 2021-2022 Pittsburgh Supercomputing Center. All Rights Reserved."
LABEL "VERSION"="5.3.3"

RUN apt-get update && apt-get install -y \
    libopenmpi-dev \
    openmpi-bin \
    ghostscript \
    libgs-dev \
    libgd-dev \
    libexpat1-dev \
    zlib1g-dev \
    libxml2-dev \
    autoconf automake libtool \
    libhtml-template-compiled-perl \
    libxml-opml-simplegen-perl \
    libxml-libxml-debugging-perl \
    sudo \
    openssh-server \
    wget \
    libxslt-dev

RUN PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install Log::Log4perl' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install Math::CDF'  && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install CGI' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install HTML::PullParser' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install HTML::Template' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install XML::Simple' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install XML::Parser::Expat' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install XML::LibXML' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install XML::LibXML::Simple' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install XML::Compile' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install XML::Compile::SOAP11' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install XML::Compile::WSDL11' && \
    PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'install XML::Compile::Transport::SOAPHTTP'
RUN mkdir /opt/meme && \
	cd /opt/meme/ && \
	wget http://meme-suite.org/meme-software/5.3.3/meme-5.3.3.tar.gz
RUN cd /opt/meme && \
	tar zxvf meme-5.3.3.tar.gz && rm -fv meme-5.3.3.tar.gz && \
	cd /opt/meme/meme-5.3.3 && \
	./configure --prefix=/opt  --enable-build-libxml2 --enable-build-libxslt --with-url=http://meme-suite.org
RUN cd /opt/meme/meme-5.3.3 && make
RUN cd /opt/meme/meme-5.3.3 && make install
RUN rm -rfv /opt/meme && \
    apt clean
ENV PATH="/opt/bin:${PATH}"
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker
CMD /bin/bash
WORKDIR /home/docker
