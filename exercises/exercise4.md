20. Erzeuge dir dein eigenes spring batch repo
- checke dir https://github.com/spring-guides/gs-batch-processing.git aus
- Erstelle dir dein eigenes spring-batch-example git hub repository
- Verändere den "push" Pfad von dem gs-batch-processing Projekt so, das er auf dein eigenes repo zeigt.

>```console
>git remote set-url origin https://github.com/<DEIN-GITHUB-REPO>/>spring-batch-example.git
>git branch -M main
>git push -u origin main
>```
- bringe die Anwendung zum Laufen und überprüfe, ob dies funktioniert hat

>```console
>./mvnw spring-boot:run
>```

21. Implementiere einen Writer für den bestehenden Step, der in eine Datei schreibt. 
- Das Ergebnis in der Datei sollte nachher so aussehen:
>```mardown
>**JILL-DOE**
>**JOE-DOE**
>**JUSTIN-DOE**
>**JANE-DOE**
>**JOHN-DOE**
>```

22. Implementiere einen Reader, der aus einer Datenbank liesst.
- Erstelle dazu eine Tabelle Person (first_name, last_name) in der Datenbank 
- Erstelle dir dazu 1000 Testdaten Einträge in der Datenbank mit bespielsweise https://www.mockaroo.com/
- Spiele die Testdaten in deine DB ein (Möglicherweise musst du hier über eine andere DB nachdenken ... )
- baue den Reader entsprechend um, so das er auf die Datenbank zugreift. Das Ergebnis sollte hier wieder ein File sein
