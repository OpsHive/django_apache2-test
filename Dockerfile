FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app/
COPY . /usr/src/app/
RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD ["python","manage.py", "runserver", "0.0.0.0:8000"]

