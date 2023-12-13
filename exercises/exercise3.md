17. Löse eine Nachricht aus, wenn ein Ereignis auf deinem repo eintritt

- Forke https://github.com/moteer/hello-world-docker
- Klicke Actions in dein github Repo auf github.com
- Gehe in deinem Repo auf Actions->New Workflow und wähle Greetings unter den vorgefertigten piplines aus
- wähle sie aus und ändere die Messages für ein issue
  >```yaml
  >issue-message: "hier etwas anderes ..."
  >pr-message: "auch etwas anderes ..."
  >```
- Speicher den Workflow und prüfe ob das funktioniert.
  - Schreibe ein Issue
  - Erzeuge einen pull request mit ein paar Änderungen
  - schau dabei auch unter actions nach, ob dein job gelaufen ist

18. Lass deine HelloWorld Java Anwendung von github Actions bauen 

  - Erstelle einen neuen Workflow und wähle das Template CI with Maven
  - lösche dabei folgende Zeilen
  >```console
>    # Optional: Uploads the full dependency graph to GitHub to improve the quality of Dependabot alerts this repository can receive
>    - name: Update dependency graph
>      uses: advanced-security/maven-dependency-submission-action@571e99aab1055c2e71a1e2309b9691de18d6b7d6
>```
  - Commite den workflow und überprüfe ob er läuft
  - Schau die potentiell Fehler situation an und prüfe, was du tun musst, damit der Workflow durchläuft
  - Fixe den Fehler und bring dein Workflow zum Laufen
  
19. Lass dein erstes Release bauen und publishe es auf Github Packages
  - füge folgendes in deine pom.xml ein und ersetze GITHUBUSER/REPONAME
  >```console
  >  <distributionManagement>
  >      <repository>
  >          <id>github</id>
  >          <name>GitHub OWNER Maven Packages</name>
  >          <url>https://maven.pkg.github.com/GITHUBUSER/REPONAME</url>
  >      </repository>
  >  </distributionManagement> 
  - Erstelle einen neuen github actions workflow mit dem Namene Template "Publish Java Package with Maven".
    - checke hier wieder die Java Version ;)
  - Erstelle ein tag zu deinem letzten Commit.
  - Erstelle über github ein erstes release mit dem tag. 