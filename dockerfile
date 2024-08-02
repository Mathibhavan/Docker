FROM ubuntu:latest
COPY . /app
RUN apt-get update && apt-get install -y python3 python3-pip 
CMD ["python3" , "app.py"]

#Multistage starts

FROM gcr.io/distroless/python3
COPY . /app
