Note: Im Detail:
  - CI/CD
    - Allgemeines
      - Prinzipiell Release cycle durchgehen
        - wer macht wann wo was von der Anforderung zur Produktion
        **-> bessere Darstellung finden** 
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
