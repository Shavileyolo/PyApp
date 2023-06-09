FROM ubuntu:18.04
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y -q python-all python-pip
ADD requirements.txt /tmp/
RUN pip install -qr /tmp/requirements.txt
ADD app.py /opt/webapp
WORKDIR /opt/webapp
EXPOSE 5000
CMD ["python", "app.py"]