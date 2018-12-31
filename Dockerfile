FROM ubuntu

RUN apt-get update -y \
    && apt-get upgrade -y

RUN groupadd -r user -g 1000 \
    && useradd -u 1000 -g user -m user

CMD ["su", "-", "user", "-c", "/bin/bash"]
