# CI / CD Übungen

# Docker basics
1. Implementiere ein simples Hello World Programm mit einer kontinuierlichen Ausgabe auf der Konsole. 
- Schreibe einen einfachen Counter, der jede Sekunde eine neue Ausgabe auf der Konsole erzeugt. 
- Lass dir ein JAR dieser Anwendung bauen und führe es auf der Kommandozeile aus. (Schmeiß es nicht weg, du brauchst es später noch ;))

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

### Folgende Aufgaben sollten alle auf der Kommandozeile erfolgen. Eine gute Hilfe ist dabei die Docker Referenz: 
https://docs.docker.com/engine/reference/commandline/run/

3. Image herunterladen:
- Lade das offizielle Alpine Linux-Image von Docker Hub herunter.
- Prüfe, ob das Image in deiner Registry enhalten ist.
> Lösung
>```console
>docker pull alpine:latest
>docker images
>```

4. Container ausführen:
- Start den Container basierend auf dem Alpine Linux-Image und verbinde dich zur Container-Shell.
> Lösung
>```console
>docker run -it alpine:latest sh
>```

5. Container mit Namen starten:
- Starte dein Alpine Linux-Image im Hintergrund und gib ihm einen benutzerdefinierten Namen.
> Lösung
>```console
>docker run -d --name mein_container_name alpine:latest
>```

6. Laufende Container anzeigen:
- Zeige alle Container an (laufende und gestoppte)
- Zeige alle laufenden Container an.
> Lösung
>```console
>docker ps -a
>docker ps 
>```

7. Container stoppen:
- Stoppe den Container aus Aufgabe 5.
- Prüfe, ob derf Container gestoppt ist
> Lösung
>```console
>docker stop mein_container_name
>docker ps -a
>```

8. ⭐️ Logs eines Containers anzeigen:
- Starte einen einfachen Webserver (z.B., httpd oder nginx) als Hintergrundcontainer und zeige die Logs an.
> Lösung
>```console
>docker run -d --name webserver nginx 
>docker logs webserver
>```

9. ⭐️ Image löschen
- Stoppe den Webserver Container wieder 
- Lösche den Container
- Lösche das Image aus deiner Registry
> Lösung
>```console
>docker stop webserver 
>docker rm my_webserver
>docker rmi httpd
>```

10. ⭐️ Mehrere Container desselben Images starten:
- Starte drei separate Container aus dem Alpine Linux-Image gleichzeitig und lass sie laufen.
> Lösung
>```console
>docker run -d --name container1 alpine:latest 
>docker run -d --name container2 alpine:latest
>docker run -d --name container3 alpine:latest
>```

11. ⭐️⭐️ Portweiterleitung:
- Stoppe wieder alle Container
- Starte das Alpine Linux-Image und leite den Container-Port 80 auf den Host-Port 8080 weiter.
> Lösung
>```console
>docker stop container1 container2 container3
>docker run -d -p 8080:80 nginx
>```

12. ⭐️⭐️ Container mit Umgebungsvariablen:
- Starte einen Container aus dem Alpine Linux-Image und setze eine Umgebungsvariable, z.B., MY_VARIABLE=hello.
- Verbinde dich zur Container shell und lese die Variable wieder aus
> Lösung
>```console
>docker run -it --name my_new_server -e MY_VARIABLE=hello alpine:latest sh
>env
>```

13. ⭐️⭐️ Container mit Volumen:
- Starte einen Container aus dem Alpine Linux-Image und binde ein Host-Verzeichnis als Volume im Container ein. Überprüfe, ob Änderungen im Volume zwischen Host und Container geteilt werden.

> Lösung
>```console
>docker run -d -v /pfad/auf/deinem/host:/ziel/im/container alpine:latest
>```
