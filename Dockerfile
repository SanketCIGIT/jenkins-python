FROM python:3.9-slim
WORKDIR /app
COPY hello.py /app
CMD ["python3", "hello.py"]

