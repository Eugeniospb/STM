FROM python:3.11-slim

WORKDIR /app

# Зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Код и ассеты
COPY bot.py .
COPY assets/ ./assets/

# Запуск
CMD ["python", "bot.py"]
