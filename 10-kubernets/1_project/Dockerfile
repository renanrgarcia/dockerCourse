FROM python:3

RUN apt update -y && \
apt install -y python3-pip python3-dev

WORKDIR /app

RUN pip3 install Flask

COPY . .

EXPOSE 5000

CMD ["python3", "./app.py"]
