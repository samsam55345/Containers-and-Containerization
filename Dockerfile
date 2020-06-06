FROM python:3.6.2


RUN pip install Flask
RUN apt-get update
RUN apt-get install apache2-utils
COPY . /hello5980.py /
WORKDIR ./
ENV FLASK_APP hello5980.py

CMD [ "flask", "run", "--host=0.0.0.0", "--port=5000" ]

EXPOSE 5000
