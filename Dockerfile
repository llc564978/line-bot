FROM python:3.8

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/
ENV CHANNEL_ACCESS_TOKEN=$CHANNEL_ACCESS_TOKEN
ENV CHANNEL_SECRET=$CHANNEL_SECRET

ENV FLASK_APP=app.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
