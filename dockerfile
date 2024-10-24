# Verwende das Python 3.12 Image
FROM python:3.12-slim

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die requirements.txt und installiere die Abhängigkeiten
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere den gesamten Inhalt des aktuellen Verzeichnisses in das Arbeitsverzeichnis des Containers
COPY . .

# Setze den Port 8080 als Standardport
EXPOSE 8080

# Führe den Django Development Server aus und gebe den korrekten Pfad zu manage.py an
CMD ["python", "src/demoapp/manage.py", "runserver", "0.0.0.0:8080"]
