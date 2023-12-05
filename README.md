# cicd

Stell dir vor, du möchtest simples Java Programm an einen Tester oder einen Operations Manager für die Produktion weiter geben.
wie würdest du das machen?
>> lass die Studenten überlegen
tester/ops hat keine Ahnung, wie man den Code bauen soll
--> man könnte das jar erstellen und weiter geben




1) erstelle eine simples HelloWorld java Programm  mit intellij und maven
jar erstellen und ausführen:
intellij maven clean compile package aufrufen
java -cp target/HelloWorld-1.0-SNAPSHOT.jar org.example.Main
das jar kann ich zusammen mit den instructions an jemanden weiter geben, der es ausführt (wenn er eine java installiert hat)
>> kann jeder tester oder ops das ohne weiteres ausführen?
java version könnte nicht übereinstimmen

2) Was, wenn ich mich zu einer Datenbank verbinden möchte?
erstelle eine springboot app mit dem initializer und
dependencies
spring data
h2
füge folgendes zu application.properties hinzu
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect

jar erstellen und ausführen:
intellij maven clean compile package aufrufen
java -jar target/Example-0.0.1-SNAPSHOT.jar
h2 ist eher für Dev Zwecke geeignet, also für einen Tester oder Ops eher nicht brauchbar. Produktionssystem oder auch Testsysteme werden sicher keine h2 DB einsetzen sondern beispielsweise mysql/oracle/postgresql oder ähnliches
>>migration auf mysql

3) mysql database anbinden


spring.datasource.url=jdbc:mysql://localhost:3306/mycompany
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.username=admin
spring.datasource.password=admin
spring.jpa.database-platform=org.hibernate.dialect.MySQLDialect
