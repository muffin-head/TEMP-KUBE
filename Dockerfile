# Use official Python image
FROM python:3.11-slim
WORKDIR /app
COPY app.py .
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
RUN useradd -m appuser
USER appuser

EXPOSE 8000
CMD ["python", "app.py"]
