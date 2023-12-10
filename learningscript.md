## Agenda 
- CI / CD
    - Intro
    - Docker
    - GitHub Actions
- Spring Batch
    - Intro
    - Zinsberechnung Account DB -> Account DB
    - Bankstatement Berechnung -> Account DB -> Statement DB
    - Überweisung CSV -> Accounts DB
    - Transaction management
    - Chunk based processing
    - Declarative I/O
    - Start/Stop/Restart
    - Retry/Skip
    - Web based administration interface (Spring Cloud Data Flow)

---

## Leitfaden

  - CI/CD
    - Allgemeines
      - Prinzipiell Release cycle durchgehen
        - wer macht wann wo was von der Anforderung zur Produktion
        ![](https://substackcdn.com/image/fetch/f_auto%2Cq_auto%3Agood%2Cfl_progressive%3Asteep/https%3A//substack-post-media.s3.amazonaws.com/public/images/a0392cd2-a9b4-4c12-8c12-5250127d7df2_1280x1679.jpeg)

      - Was machen DEVs typischer Weise? 
        - plan -> develop -> unit (integration) test -> push -> bugfix
        **->darstellung für dev anteil finden**
        - Git mit "pull requests", "feature branches" erklären 
        **-> Fragen, ob das bereits gemacht wurde?** 
        - **potentielles Vortragsthema -> "git flow"**
        - Build mit jar und maven zeigen / (webapp welches Artefact sollte da herauskommen?)
        **-> webapp react app build Prozess darstellen / zeigen**
        - Docker
          - welches Problem löst Docker (Portabilität der Anwendung mit all seinen Abhängikeiten JDK, Laufzeitumgebungen, Datenbanken, etc. Skallierbarkeit)
          - Infrastruktur als Code (Dockerfile, docker-compose.yaml, ...)
          - **->Unterschied zu VM darstellen**
          - **-> Docker Diagramm/Darstellung vom Dockerfile in die Registry**
          - simple Docker Commands auf Docker HUB https://docker.io **->Slide mit Commands & Reference**
             - run
```console
docker run docker/whalesay cowsay Hello!
docker run -it ...
```
- mehr in der Dokumentation https://docs.docker.com/engine/reference/commandline/run/

```console
docker ps
docker ps -a
docker images
docker start ...
docker stop ...
docker rm ...
docker rmi ...
docker pull ...
docker exec ...
```

- Dockerfile beispiel zeigen und erklären Referenz: https://docs.docker.com/engine/reference/builder/

```docker
# Verwende das offizielle OpenJDK-Image als Basis
FROM openjdk

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die JAR-Datei der Spring Boot-Anwendung ins Arbeitsverzeichnis
COPY target/MyCompanyApp-0.0.1-SNAPSHOT.jar /app/

# Setze den Befehl, der beim Start des Containers ausgeführt wird
CMD ["java", "-jar", "MyCompanyApp-0.0.1-SNAPSHOT.jar"]
```


>[Übung Docker](/exercises/exercise1.md)


  - Spring Batch 

---

