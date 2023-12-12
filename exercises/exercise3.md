vorher nachbauen 
  https://github.com/moteer/HelloGitHubActions/edit/main/.github/workflows/ci-run.yaml

17. Einfacher Workflow erstellen:
- Erstelle einen GitHub Actions Workflow, der bei einem Push auf den main-Branch ausgelöst wird.
- Führe einen Schritt aus, der den Workflow-Namen ausgibt.

18. Java App kompilieren:
- Füge dem Workflow hinzu, dass er eine einfache Java-Anwendung kompiliert.
- Im Anschluss soll ein JAR daraus gemacht werden

19. Erweitere den Workflow, um ein Docker-Image deiner Java-Anwendung zu erstellen.
- Verwende ein einfaches Dockerfile.

20. Image in Docker Hub veröffentlichen:
- Veröffentliche das erstellte Docker-Image in Docker Hub. 
- Erstelle dir dazu einen Account
bei Docker Hub 
- Setze Benutzername und Kennwort als Secrets.

21. Bedingte Ausführung:
- Ändere den Workflow so, dass er nur dann ausgeführt wird, wenn Änderungen in einem Verzeichnis namens src vorgenommen wurden.
Nutze die paths-Eigenschaft in der Trigger-Konfiguration.
