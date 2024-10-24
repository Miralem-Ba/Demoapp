# Verwende das Python 3.12 Image
FROM python:3.12-slim

# Installiere Systembibliotheken, die psycopg2 benötigt
RUN apt-get update && apt-get install -y gcc libpq-dev

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die requirements.txt und installiere die Abhängigkeiten
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere den Rest der Applikation in den Container
COPY . .

# Setze den Port 8080 als Standardport
EXPOSE 8080

# Führe den Django Development Server aus
CMD ["python", "src/demoapp/manage.py", "runserver", "0.0.0.0:8080"]
