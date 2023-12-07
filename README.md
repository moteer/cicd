# CI / CD

## Docker

Stelle dir vor, du möchtest ein simples Java Programm (Hello World)in deiner Organisation an einen Tester zum Testen oder einen Operations Manager für Bereitstellung auf der Produktionsumgebung weiter geben.

> Frage: Wie würdest du das machen? 
Welche Dateien müsstest du weiter geben? Bedenke, ein Tester kennt sich nicht unbedingt mit Java Code aus. Welche ausführbare Einheit eignet sich zur Weitergabe?

--> man könnte das jar erstellen und weiter geben

1) erstelle eine simples HelloWorld java Programm  mit intellij und maven

Jar erstellen und ausführen:
intellij maven clean compile package aufrufen
```console
java -cp target/HelloWorld-1.0-SNAPSHOT.jar org.example.Main
````

Das jar kann ich zusammen mit den Instructions an jemanden weiter geben, der es ausführt (wenn er ein java installiert hat)
> kann jeder tester oder ops das ohne weiteres ausführen?
java version könnte nicht übereinstimmen

2. Was, wenn ich mich zu einer Datenbank verbinden möchte?

- Erstelle eine Springboot Applikation mit dem [initializer](https://start.spring.io/) und
Dependencies
spring data
h2
- Ersetze die **applications.properties** folgendermaßen

```
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
```

Jar erstellen und ausführen:
Intellij maven clean compile package aufrufen
```console
java -jar target/Example-0.0.1-SNAPSHOT.jar
```

Man sieht, diese Anwendung lässt sich auch ohne Weiteres als jar ausliefern und weiter geben.
h2 ist allerdings eher für Development Zwecke geeignet, also für einen Tester oder Ops eher ungeeignet. Produktionssystem oder auch Testsysteme werden sicher keine h2 DB einsetzen sondern beispielsweise Mysql, Oracle, Postgresql, MongoDB, etc


3) Mysql Datenbank anbinden

- Ersetze die **applications.properties** folgendermaßen 
```
spring.datasource.url=jdbc:mysql://localhost:3306/mycompany
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.username=admin
spring.datasource.password=admin
spring.jpa.database-platform=org.hibernate.dialect.MySQLDialect
```
> Kann man das an an den Tester oder Ops weitergeben? Was wird wahrscheinlich passieren, wenn ein Tester versucht dieses Jar auf seinem Testsystem auszuführen?

4. Installiere Docker

- Befolge die [Docker Installationsanleitung](https://docs.docker.com/get-docker/) für dein OS 
- Prüfe, ob Docker erfolgreich installiert wurde
```console
docker --version
```
- Erstelle die einen Account unter [Docker Hub](https://hub.docker.com/)

5. Erstelle einen Docker File/Image/Container für die Java Application und einen weiteren für die mysql Datenbank

    - Java Applikation
        - Erstelle eine Datei in deinem Projekt mit dem Namen Dockerfile mit folgendem Inhalt

        ```console
        
        FROM openjdk:22

        RUN mkdir /app

        COPY target/Example-0.0.1-SNAPSHOT.jar /app

        WORKDIR /app

        CMD java -jar Example-0.0.1-SNAPSHOT.jar
        ```
        
        - Starte Docker Desktop und überprüfe ob es läuft

        ```console
        docker info
        ```

        - Baue dein Image

        ```console
        docker build -t hello-world:1.0 .
        ```
        - Überprüfe, ob dein Image im lokalen Docker Repo zu finden ist
        ```console
        docker images
        ```
        - Start dein Container
        ```console
        docker run hello-world:1.0

        ```
        >Wird das bereits funktionieren? Kann ich meinen Image an einen Tester/Ops so bereits weiter geben? 

    - Datenbank

        - Erstelle und starte einen Mysql Datenbank Container vom mysql Image auf [Docker Hub](https://hub.docker.com/) und überprüfe ob der Datenbank Container läuft. 

        ```console
            docker pull mysql
            docker run --name app-db -d -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE_NAME=myDB mysql
            docker logs 
        ```
        >Überlege, ob es grundsätzlich eine gute Idee ist eine Datenbank in einem Container zu haben?

        - Die Datenbank existiert erstmal noch nicht auf dem db server im container. Erstelle folgendes sql script in deinem Projekt und passe im folgenden Script den Pfad zu deinem Script an.

        ```console
        docker run --name app-db-with-init-script-5.0 -d -p 3307:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE_NAME=myDB -v /Users/moteer/projects/cicd/scripts:/docker-entrypoint-initdb.d mysql

        mysql -h 127.0.0.1 -P 3307 -u root -p
        ```






