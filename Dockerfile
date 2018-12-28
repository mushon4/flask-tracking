FROM python:2.7.15
COPY ./requirements.txt /flask_tracking/requirements.txt
WORKDIR /flask_tracking
RUN pip install -r requirements.txt
COPY . /flask_tracking
EXPOSE 5000
ENTRYPOINT ["python"]
CMD [ "run.py" ]
