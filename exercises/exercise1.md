# CI / CD Übungen

# Docker basics
1. Implementiere ein simples Hello World Programm mit einer kontinuierlichen Ausgabe auf der Konsole. 
- Schreibe einen einfachen Counter, der jede Sekunde eine neue Ausgabe auf der Konsole erzeugt. 
- Lass dir ein JAR dieser Anwendung bauen und führe es auf der Kommandozeile aus. (Schmeiß es nicht weg, du brauchst es später noch ;))

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

### Folgende Aufgaben sollten alle auf der Kommandozeile erfolgen. Eine gute Hilfe ist dabei die Docker Referenz: 
https://docs.docker.com/engine/reference/commandline/run/

3. Image herunterladen:
- Lade das offizielle Alpine Linux-Image von Docker Hub herunter.
- Prüfe, ob das Image in deiner Registry enhalten ist.

4. Container ausführen:
- Start den Container basierend auf dem Alpine Linux-Image und verbinde dich zur Container-Shell.

5. Container mit Namen starten:
- Starte dein Alpine Linux-Image im Hintergrund und gib ihm einen benutzerdefinierten Namen.

6. Laufende Container anzeigen:
- Zeige alle Container an (laufende und gestoppte)
- Zeige alle laufenden Container an.

7. Container stoppen:
- Stoppe den Container aus Aufgabe 3.

8. ⭐️ Logs eines Containers anzeigen:
- Starte einen einfachen Webserver (z.B., httpd oder nginx) als Hintergrundcontainer und zeige die Logs an.

9. Image löschen
- Stoppe den Webserver Container wieder 
- Lösche das Image aus deiner Registry

10. ⭐️ Mehrere Container desselben Images starten:
- Starte drei separate Container aus dem Alpine Linux-Image gleichzeitig und lass sie laufen.

11. ⭐️⭐️ Portweiterleitung:
- Stoppe wieder alle Container
- Starte das Alpine Linux-Image und leite den Container-Port 80 auf den Host-Port 8080 weiter.

12. ⭐️⭐️ Container mit Umgebungsvariablen:
- Starte einen Container aus dem Alpine Linux-Image und setze eine Umgebungsvariable, z.B., MY_VARIABLE=hello.
- Verbinde dich zur Container shell und les die Variable wieder aus

13. ⭐️⭐️ Container mit Volumen:
- Starte einen Container aus dem Alpine Linux-Image und binde ein Host-Verzeichnis als Volume im Container ein. Überprüfe, ob Änderungen im Volume zwischen Host und Container geteilt werden.


# Objective
- Lerne den grundlegenden Umgang mit Docker und verstehe, welches Problem Docker löst.
  - Ich kann CI/CD Grundlegend einordnen.
  - Mir ist bewusst, welche Probleme Docker löst.
  - Ich kenne die Begrifflichkeiten im Dockerumfeld (Dockerfile, Image, Container, etc) und kann sie auseinander halten.
  - Installation von Docker auf meinem Rechner.
  - Ich habe erfolgreich einen Docker Container gestartet.
  - Ich habe Grundlegende Docker Befehle auf der Kommandozeile ausgeführt und verstanden, was sie tun
  - Ich habe mein erstes Dockerfile geschrieben und einen eigenes Image erzeugt und dieses als Container gestartet
