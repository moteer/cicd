
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

5. ⭐️⭐️⭐️ Erstelle einen App Container und einen Datenbank Container und lass sie miteinander sprechen. 
- Starte einen Mysql Datenbank Container vom mysql Image auf [Docker Hub - MYSQL Image](https://hub.docker.com/_/mysql) und überprüfe ob der Datenbank Container läuft. 
- Denke dir eine einfach Anwendung aus, oder nimm eine bereits bestehende, die sich mit einer DB verbindet und CRUD Operationen durchführt.
- Erstelle deine Datenbank und ein paar Datensätze mit einem sql Script, das direkt beim Start des DB Containers geladen wird.
  - z.B.: so [scripts/mydb.sql](../scripts/mydb.sql) 
- Schreibe eine Spring-Boot App, die auf diese Datenbank zugreift. (Oder verwende eine, die bereits funktioniert ;))
- verwende hier ein docker-compose.yaml, um beide container miteinander zu verbinden

