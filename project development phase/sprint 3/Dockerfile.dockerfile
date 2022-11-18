FROM python:3.9
LABEL maintainer="gajalaxmi"
RUN apt-get update
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "python", "app.py" ]
