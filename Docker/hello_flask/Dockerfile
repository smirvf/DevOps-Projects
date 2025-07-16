FROM python:3.8-slim

# 1. Install build tools + MySQL dev headers
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      build-essential \
      default-libmysqlclient-dev \
      pkg-config \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .
RUN pip install flask mysqlclient
EXPOSE 5002
CMD ["python", "app.py"]