FROM python:2.7
RUN apt-get update -y
RUN apt-get install -y texlive-full
RUN apt-get install -y pandoc

# Install bats
RUN git clone https://github.com/sstephenson/bats.git /tmp/bats && \
    cd /tmp/bats && ./install.sh /usr/local

# Install Python requirements
RUN pip install --upgrade pip
ADD requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt

# Run bats
ADD test /tmp/test
RUN bats /tmp/test

# Change
ADD example.pymd /knitpy/example.pymd
CMD /bin/bash
