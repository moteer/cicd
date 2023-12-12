17. Baue dir folgendes github in deinem eigenen Repo nach oder forke das github
  https://github.com/moteer/HelloGitHubActions/edit/main/.github/workflows/ci-run.yaml
  - Prüfe, ob die pipeline bei dir erfolgreich durchläuft

18. Lass dir zusätzlich noch ein jar erstellen

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
