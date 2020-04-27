FROM ubuntu:18.04

RUN dpkg --add-architecture i386

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN apt-get -y install gcc-multilib g++-multilib libc6:i386 libc6-dev:i386 libstdc++-8-dev:i386
RUN apt-get -y install libssl1.0.0:i386 libqtwebkit4:i386 libqt4-scripttools:i386 libqt4-script:i386 libqt4-qt3support:i386 libqt4-xml:i386 libqtgui4:i386 libqt4-network:i386 libqtcore4:i386 libssl-doc:i386
RUN apt-get -y install wget
RUN apt-get -y install sudo
RUN apt-get -y clean

RUN rm -rf /var/lib/apt/lists/*

ARG UID
ARG GID

RUN groupadd -g $GID ubuntu
RUN useradd -u $UID -g $GID -ms /bin/bash ubuntu && adduser ubuntu sudo && echo -n 'ubuntu:ubuntu' | chpasswd

# Enable passwordless sudo for users under the "sudo" group
RUN sed -i.bkp -e \
      's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' \
      /etc/sudoers

USER ubuntu
WORKDIR /home/ubuntu/

RUN wget http://elf.cs.pub.ro/rl/res/tema1/Packet_Tracer_6.2_Ubuntu.tar.gz -O /home/ubuntu/Packet_Tracer_6.2_Ubuntu.tar.gz
RUN tar xzvf Packet_Tracer_6.2_Ubuntu.tar.gz
RUN ls

RUN chown ubuntu:ubuntu /home/ubuntu/PacketTracer62Student

CMD ["/home/ubuntu/PacketTracer62Student/bin/PacketTracer6"]
