FROM python:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install pylint -y
WORKDIR /app
EXPOSE 8000
COPY ./rp-portfolio/ .  
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate
CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]
# RUN pylint /app 

