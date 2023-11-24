FROM ubuntu:rolling

LABEL name="t2.devel"
LABEL maintainer="Alexander Shusharin <alex@gotovo.com>"

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN set -x \
    && apt-get update \
    && apt-get upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    --no-install-recommends --no-install-suggests \
    bash-completion binutils bzip2 curl diffutils file findutils \
    gettext-base git gzip iputils-ping less make openssh-client patch \
    python3 python3-doc python3-pip python3-venv \
    rsync sshpass sudo time tzdata vim wget xz-utils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# set timezone
ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# add root-owned files
COPY --chown=0:0 --chmod=0440 ./10-admins /etc/sudoers.d/

# create a non-root user
RUN groupadd --gid 2900 appuser && \
    useradd --uid 2900 --gid appuser \
    --groups adm --shell /bin/bash --create-home appuser

# add appuser files as root
WORKDIR /home/appuser
COPY --chown=appuser:appuser ./appuser.home/ .

# switch to the default user
USER appuser

RUN chmod 700 .ssh && chmod 644 .ssh/* && chmod 600 .ssh/*.id_* .ssh/authorized_keys

RUN /bin/python3 -m venv .venv \
    && . .venv/bin/activate \
    && pip3 install --progress-bar=off -U setuptools pip \
    && rm -rf .cache

STOPSIGNAL SIGTERM

CMD ["/bin/bash"]
