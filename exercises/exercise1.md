# CI / CD Übungen

# Docker
1. Implementiere ein simples Hello World Programm mit einer kontinuierlichen Ausgabe auf der Konsole. 
- Schreibe einen einfachen Counter, der jede Sekunde eine neue Ausgabe auf der Konsole erzeugt. 
- Lass dir ein JAR dieser Anwendung bauen und führe es auf der Kommandozeile aus.

2. Installiere Docker.
- Lader dir [Docker](https://docs.docker.com/get-docker/) herunter und befolge die Installationsanleitung für dein OS 
- Prüfe auf der Commandozeile, ob Docker erfolgreich installiert wurde.
```console
docker --version
```
- Starte deinen ersten Docker Container
```console
docker run docker/whalesay cowsay Hello!
```

3. Zurück zum Hello World aus Aufgabe 1. Lass dein Hello World Java Programm in einem Docker Container laufen.
- Schreibe ein Dockerfile, welches dein HelloWorld Java enthält und bei Start des Containers ausführt.
- Baue ein Docker Image und überprüfe, ob es in deiner lokalen Registry gespeichert wurde.
- Starte deinen Docker Container. 
- Überprüfe, ob deine Anwendung gestarted wurde. Lass dir die logs der Anwendung anzeigen.
- Starte einen zweiten und einen dritten Docker Container mit deiner HelloWorld Anwendung.

4. ⭐️ Lass eine deiner React Apps der letzten Woche in einem Container laufen.
- Überlege, was es dazu benötigt, um deine Web Applikation in einem Container abrufen zu können
- Dockerfile -> Image -> Container starten.
- Mache die Anwendung für deinen Browser verfügbar.

5. ⭐️⭐️ Erstelle einen App Container und einen Datenbank Container und lass sie miteinander sprechen. 
- Starte einen Mysql Datenbank Container vom mysql Image auf [Docker Hub - MYSQL Image](https://hub.docker.com/_/mysql) und überprüfe ob der Datenbank Container läuft. 
- Die Datenbank existiert erstmal noch nicht auf dem db server im container. Erstelle folgendes 
[scripts/mydb.sql](../scripts/mydb.sql) in deinem Projekt und passe im folgenden Script den Pfad zu deinem Script an.

# Objective
- Lerne den grundlegenden Umgang mit Docker und verstehe, welches Problem Docker löst.
  - Ich kann CI/CD Grundlegend einordnen.
  - Mir ist bewusst, welche Probleme Docker löst.
  - Ich kenne die Begrifflichkeiten im Dockerumfeld (Dockerfile, Image, Container, etc) und kann sie auseinander halten.
  - Installation von Docker auf meinem Rechner.
  - Ich habe erfolgreich einen Docker Container gestartet.
  - Ich habe Grundlegende Docker Befehle auf der Kommandozeile ausgeführt und verstanden, was sie tun
  - Ich habe mein erstes Dockerfile geschrieben und einen eigenes Image erzeugt und dieses als Container gestartet
