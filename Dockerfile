FROM python:3.11-slim

WORKDIR /app

COPY require.txt .

RUN pip install --no-cache-dir -r require.txt

COPY . .

EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]