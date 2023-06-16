FROM debian:bookworm

RUN apt-get update -y && \
    apt-get install -y \
	debos \
	ostree \
	mmdebstrap \
	python3-click \
	python3-rich \
	python3-pip \
	python3-yaml \
	dosfstools \
	rsync \
	git

COPY assets/pip.conf /etc/pip.conf
RUN pip install -U git+https://github.com/zulcss/microlat.git#egg=microlat
