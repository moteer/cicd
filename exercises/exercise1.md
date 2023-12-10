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

4. Lass eine deiner React Apps der letzten Woche letzten Woche in einem Container laufen.
- Dockerfile -> Image -> Container starten.
- Mache die Anwendung für deinen Browser verfügbar.

5. --> Erstelle ein Docker compose file für eine mysql datenbank und eine spring boot app, die darauf zugreift

# Objective
- Lerne den grundlegenden Umgang mit Docker und verstehe, welches Problem Docker löst.


# not ready yet -> TODO Erik:
- früher musste man das JAR oder WAR oder was auch immer für ein Artefact an eine OPS Person weiter geben und entsprechende Instruktionen, wie man die Application startet und konfiguriert. Außerdem musste sicher gestellt sein, dass alle Abhängigkeiten in der benötigten Version auf dem Zielsystem für vorhanden sind. (BsP: JVM, NodeJS, Python, etc...)
- Darstellung, wie das in einem Container vereint wird. -> MIRO