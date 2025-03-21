FROM python:3.9.1

RUN mkdir /app
ADD . /app
WORKDIR /app

# RUN apt-get update -y
# RUN apt-get install -y tzdata
RUN pip3 install -r requirements.txt

ENV TZ Europe/Rome

CMD ["python", "/app/main.py"]
EXPOSE 8443