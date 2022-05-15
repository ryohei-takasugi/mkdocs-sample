FROM alpine:3.12

RUN apk update \
  # install mkdocs
  && apk add --no-cache gcc libc-dev python3 py3-pip python3-dev git \
  && pip3 install --upgrade pip \
  && pip3 install mkdocs mkdocs-material \
  # Python Extensions https://facelessuser.github.io/pymdown-extensions/
  && pip3 install pymdown-extensions \
  # Highlights plugin https://pygments.org/
  && pip3 install pygments \
  # Drow plugin
  && pip3 install plantuml-markdown markdown-inline-graphviz \
  # Math plugin https://github.com/mitya57/python-markdown-math
  && pip3 install python-markdown-math \
  # Auto create navigation plugin https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin
  && pip3 install mkdocs-awesome-pages-plugin 

# install markdown-dot https://github.com/jawher/markdown-dot
RUN mkdir -p /root/.markdown-dot
RUN git clone https://github.com/jawher/markdown-dot.git /root/.markdown-dot
RUN cd /root/.markdown-dot && pip install .

RUN mkdir -p /root/projects