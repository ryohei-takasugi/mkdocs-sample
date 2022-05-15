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
  # Uml plugin
  && pip3 install plantuml-markdown \
  # Math plugin https://github.com/mitya57/python-markdown-math
  && pip3 install python-markdown-math \
  # Auto create navigation https://github.com/oprypin/mkdocs-literate-nav
  && pip3 install mkdocs-literate-nav \
  # Rename navigation plugin https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin
  && pip3 install mkdocs-awesome-pages-plugin

RUN mkdir -p /root/projects