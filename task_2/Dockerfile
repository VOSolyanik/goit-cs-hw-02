FROM python:3.10

ENV app /app

WORKDIR $app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python", "main.py"]