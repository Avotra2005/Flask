FROM python:3.11-slim

WORKDIR /app

COPY require.txt .

RUN pip install --no-cache-dir -r require.txt

COPY . .

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]