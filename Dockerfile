FROM python:3.13-alpine

WORKDIR /app

# 테스트 5에서 발견된 Python 기본 패키지 취약점 해결 시도
RUN pip install --no-cache-dir --upgrade pip setuptools

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000
CMD ["python", "app.py"]
