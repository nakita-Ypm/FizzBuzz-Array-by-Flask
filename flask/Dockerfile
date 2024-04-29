FROM python:slim

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

CMD ["flask", "run", "-h", "0.0.0.0", "-p", "3001"]