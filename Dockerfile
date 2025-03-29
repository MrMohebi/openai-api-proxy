FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml .
COPY uv.lock .

RUN pip install .

COPY app.py .

ENV FLASK_APP=app.py

EXPOSE 8005

CMD ["flask", "run", "--host=0.0.0.0", "--port=8005"]