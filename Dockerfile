FROM escomp/base:latest

RUN mkdir -p _build
RUN --mount type=bind,source=_build,target=/home/user/mounted_home/_build

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
