20. Erzeuge dir dein eigenes spring batch repo
- checke dir https://github.com/spring-guides/gs-batch-processing.git aus
- Erstelle dir dein eigenes spring-batch-example git hub repository
- Verändere den "push" Pfad von dem gs-batch-processing Projekt so, das er auf dein eigenes repo zeigt.

>```console
>git remote set-url origin https://github.com/<DEIN-GITHUB-REPO>/<DEIN-GIT-HUB_PROJECT-NAME>
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

Teams:
1. Moritz (M), Keet(M), Igor (M)
2. Sebastian Z (M), Edward(M), Tolga (M)
3. Akin (H), Krischan (H), Ilia(H)
4. Bahadir (M), Fatih (M), Julian(M)
5. Fares (H), Ali (H), Tony (H), Sebastian K. (H)

22. Implementiere einen Reader, der aus einer Datenbank liesst.
- Erstelle dazu eine Tabelle Person (first_name, last_name) in der Datenbank 
- Erstelle dir dazu 1000 Testdaten Einträge in der Datenbank mit bespielsweise https://www.mockaroo.com/
- Spiele die Testdaten in deine DB ein (Möglicherweise musst du hier über eine andere DB nachdenken ... )
- baue den Reader entsprechend um, so das er auf die Datenbank zugreift. Das Ergebnis sollte hier wieder ein File sein

23. Folgende Transactions.csv kommt täglich bei euch in der Bank an.

```csv
Quellbank,Quellkontonummer,Zielbank,Zielkontonummer,Transaktionsdatum,Betrag
Sparkasse,1234567890,Commerzbank,9876543210,2023-12-01,100.00
Commerzbank,9876543210,Deutsche Bank,5432109876,2023-12-02,-20.00
Deutsche Bank,5432109876,Volksbank,1357924680,2023-12-03,50.00
Volksbank,1357924680,Postbank,2468013579,2023-12-04,-10.00
Postbank,2468013579,Sparkasse,1234567890,2023-12-05,30.00
```

- erstelle dir eine Tabelle Account zur Verwaltung von Konten

```sql
CREATE TABLE Account (
    AccountID INT PRIMARY KEY AUTO_INCREMENT,
    Bank VARCHAR(255),
    Kontonummer VARCHAR(20),
    Saldo DECIMAL(10,2)
);
```
- Implementiere ein spring batch, was auf Grundlage dieses täglich eingehenden csvs das Saldo für jedes Konto entsprechend anpasst
