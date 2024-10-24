# Dein Probetag bei 89grad

Dieses Repository enthält alles, was du für deinen Probetag bei uns brauchst. Gerne darfst 
du dieses auch verwenden, um weitere Dateien abzulegen.
Erstelle doch als erstes einen neuen Branch im Vormat `vorname-nachname-probetag` und pushe den gleich auf das Repo.


## Zielsetzung

Ziel ist es, dir anhand eines kleinen Projektes die Gelegenheit zu geben, uns zu zeigen, was 
du kannst. Wir gehen davon aus, dass du diese Aufgaben selbständig erledigen kannst. Falls 
dir die Aufgabenstellung unklar ist, darfst du uns aber natürlich gerne bitten, diese 
klarzustellen.

Selbstverständlich darfst du alles an Hilfsmitteln verwenden was du willst - seinen es Bücher, 
Software-Dokumentation, Tutorials, `man` pages, etc.

Der Projektumfang wurde so gewählt, dass es nicht für alles reicht. Beginne zuerst 
mit jenen Punkten die als **muss** markiert sind. Hast du im Anschluss noch Zeit, darfst 
du dich gerne eine **optional** gekennzeichnete Aufgabe aussuchen, welches dich interessiert. Falls ertwas nicht klappt, 
interessiert uns auch, woran du gescheitert bist und was deine nächsten Arbeitschritte wären.


## Aufgabenstellung

Unter folgendem Link findest du das offizielle Django tutorial 
[django](https://docs.djangoproject.com/en/5.1/intro/tutorial01/).
Ziel ist es, die demoapp welche du unter `./src` findest in eine System-Landschaft 
einzubetten. Hierzu gehören verschiedene Komponenten.

Bitte verwende für die Virtualisierung [Docker](https://www.docker.com/) oder [Podman](https://podman.io/).

Wir erwarten keine Dokumentation von dir, jedoch wär es schön, 
wenn du uns eine Übersicht über die verschiedenen involvierten Kompentent geben könntest. 

### Applikation (**muss**)

In einem ersten Schritt geht es darum, die demoapp in einen Container
zu packen. Die Applikation läuft unter Python 3.12, und hat Python Dependencies gemäss `requirements.txt`.

Läuft die Applikation solltest du unter `/` eine Rakete sehen und den Text `The install worked successfully! Congratulations!`
Unter `/admin` findest du das admin backend.

Erwartete Ergebnisse:
- Einen Docker-Container, in welchem die Demoapp mittels `development server (manage.py runserver)` 
oder [gunicorn](https://gunicorn.org/) läuft
- Man soll die Applikation via HTTP auf Port `8080` erreichen können

Bitte commite diese Lösung als `commit 1` unter deinem Branch.

### Datenbank (**muss**)

Standardmässig nutzt django sqlite. Wir möchten nun aber Postgres 15 verwenden

Du kannst die DB entweder lokal installieren oder besser, einen Container nutzen 
[postgres container](https://hub.docker.com/_/postgres). 
Auf jeden Fall muss die Datenbank einen Reboot deines Notebooks überleben, 
dh es dürfen dabei keine Daten verloren gehen.

Bitte commite diese Lösung als `commit 2` unter deinem Branch.

### Applikations-User (**muss**)

Sobald die Applikation im Container läuft, und mit der Datenbank verbunden ist, erstelle dir einen Django Superuser. Mittels jenem kannst du dich auf dem Admin-GUI der Applikation, 
unter `/admin/`, anmelden. Angenommen die Applikation ist erreichbar unter 
`http://127.0.0.1:8080`, sollte folgender Ablauf ohne Auftreten eines Fehlers funktionieren:

- Zugriff auf http://127.0.0.1:8080/admin/ im Browser
- Anmelden mit Superuser Credentials
- Erstellen eines neuen Benutzers im Backend

Bitte commite diese Lösung als `commit 3` unter deinem Branch.

### Replikation (**optional**)

Konfiguriere bitte eine Datenbank-Replikation mittels einem jener Mechanismen, welche 
Postgres hierfür vorsieht. Die Replika kann entweder als eigene virtuelle Maschine, oder eigenen Docker Container, laufen.


Bitte commite diese Lösung als `commit replika` unter deinem Branch.

### Backup (**optional**)

Richte bitte ein automatisches, stündliches Backup der Applikations-Datenbank ein.
Die Backups können direkt auf dem Datenbank-Server gehalten werden, dürfen sich aber 
nicht gegenseitig überschreiben.


Bitte commite diese Lösung als `commit backup` unter deinem Branch.

### Monitoring (**optional**)

Wähle ein Monitoring-Tool deiner Wahl, und integriere es in den Stack. Hierbei hast du 
die komplette Freiheit, aber einige lohnende Monitoring-Ziele sind zB:
- Monitoring der System-Last der involvierten VMs
- Monitoring des HTTP Endpunktes der Applikation


Bitte commite diese Lösung als `commit monitoring` unter deinem Branch.
## Vorstellung der Ergebnisse

Für die Präsentation wollen wir, dass du uns deine Lösung vorstellst. Wir sind Techniker, 
dh du brauchst keine Folien und grossen Worte. Erkläre uns stattdessen, wie du das 
Problem angegangen bist. Zeige auf, was deine Gedanken waren, und weshalb du dich so 
entschieden hast wie du es tatest. Falls du ein spannendes Problem debuggen musstest, kannst 
du gerne auch darauf eingehen.
