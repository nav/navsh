FROM python:3-slim-stretch
MAINTAINER Nav Aulakh "nav@navaulakh.com"

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app/app.py"]
