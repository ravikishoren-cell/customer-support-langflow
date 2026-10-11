FROM langflowai/langflow:latest

ENV PYTHONUNBUFFERED=1

EXPOSE 10000

CMD ["sh", "-c", "langflow run --host 0.0.0.0 --port ${PORT:-10000}"]
