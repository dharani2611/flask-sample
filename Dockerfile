FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN pip3 install flask
COPY /hello.py /bin/hello.py
CMD ["/bin/hello.py"]
ENTRYPOINT ["python3"] -D FOREGROUND
