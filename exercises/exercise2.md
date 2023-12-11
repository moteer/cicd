
14. Zurück zum Hello World aus Aufgabe 1. Lass dein Hello World Java Programm in einem Docker Container laufen.
- Schreibe ein Dockerfile, welches dein HelloWorld Java enthält und bei Start des Containers ausführt.
- Baue ein Docker Image und überprüfe, ob es in deiner lokalen Registry gespeichert wurde.
- Starte deinen Docker Container. 
- Überprüfe, ob deine Anwendung gestarted wurde. Lass dir die logs der Anwendung anzeigen.
- Starte einen zweiten und einen dritten Docker Container mit deiner HelloWorld Anwendung.

15. ⭐️⭐️ Lass eine deiner React Apps der letzten Woche in einem Container laufen.
- Überlege, was es dazu benötigt, um deine Web Applikation in einem Container abrufen zu können
- Dockerfile -> Image -> Container starten.
- Mache die Anwendung für deinen Browser verfügbar.

# TODO Erik

5. ⭐️⭐️ Erstelle einen App Container und einen Datenbank Container und lass sie miteinander sprechen. 
- Starte einen Mysql Datenbank Container vom mysql Image auf [Docker Hub - MYSQL Image](https://hub.docker.com/_/mysql) und überprüfe ob der Datenbank Container läuft. 
- Die Datenbank existiert erstmal noch nicht auf dem db server im container. Erstelle folgendes 
[scripts/mydb.sql](../scripts/mydb.sql) in deinem Projekt und passe im folgenden Script den Pfad zu deinem Script an.
- Verwende folgendes Spring-Boot Projekt, um dich zu
...

