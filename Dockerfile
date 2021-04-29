# https://pythonspeed.com/articles/pipenv-docker/
FROM python:3.7
COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt
COPY . /tmp/helloworld/
RUN pip install /tmp/helloworld
CMD python -m helloworld.hello_world