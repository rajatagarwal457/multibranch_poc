FROM ubuntu:20.04
RUN apt-get update
RUN apt-get update && apt-get install -y python3.9 python3.9-dev
RUN apt-get install python3-pip -y
RUN pip install --upgrade pip
RUN pip install django
RUN pip install boto3
ENV AWS_ACCESS_KEY_ID=AKIAWV2ILK5B2A4PT5FR
ENV AWS_SECRET_ACCESS_KEY=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
ENV AWS_DEFAUKT_REGION=ap-south-1
COPY . .
EXPOSE 8000
CMD ["python3","manage.py","runserver", "0.0.0.0:8000"]
