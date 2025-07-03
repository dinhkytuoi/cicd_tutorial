FROM python:3.12-slim
MAINTAINER Tuoi Dinh "tuoib2206020@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential
WORKDIR /flask_app
COPY . /flask_app
RUN pip3 install  -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
