FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir langflow==1.12.4

EXPOSE 10000

CMD sh -c "langflow run --host 0.0.0.0 --port ${PORT:-10000}"
