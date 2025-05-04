FROM golang
WORKDIR /app

RUN echo 'alias la="ls -alt"' > ~/.bashrc

RUN apt update && apt install -y curl vim

COPY ./src ./src

CMD ["/bin/bash"]