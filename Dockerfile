# Dockerfile for book_catalog microservice
FROM python:3.11-slim

# Working Directory
WORKDIR /app

COPY ./book_catalog/requirements.txt .

RUN pip install -r requirements.txt

COPY ./book_catalog .

# Run the FastAPI application with uvicorn
CMD uvicorn main:app --host 0.0.0.0 --port 3000

