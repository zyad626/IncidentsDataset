FROM python:3.8.16-slim-buster
COPY requirements.txt /
RUN pip --no-cache-dir install -r /requirements.txt
WORKDIR /app
COPY . /app
#Exposing the port 8012 from the container
EXPOSE 8012
CMD ["python3", "run_demo_server.py"]
