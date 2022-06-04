# Развертывание проекта

## Backend

1. Generating an SSH-key (if you don't have one):

```bash
  $ ssh-keygen -t ed25519 -a 100
```

If the key (or rather its public part) already exists, then it is stored in the following ways:
- Windows: `%HOMEDRIVE%%HOMEPATH%\.ssh\id_rsa.pub`
- Linux: `~/.ssh/id_rsa.pub`

2. It is necessary to get data from this repository.

To run Backend, you need to clone the backend and deployer repository

```bash
  $ git clone git@github.com:doraketa/php-docker-build.git
```

3. Before starting the project, you need to add the domain to the `hosts` file:

- Linux: `/etc/hosts`
- Windows: `C:\Windows\System32\drivers\etc\hosts`
- It is necessary to add the following line below all the others: `hostname.loc 127.0.0.1`

4. Now everything is ready to build Backend container. From deployer folder we can run command:

- Linux:
```bash
  $ make privilege
  $ make install
```
- Windows:
```bash
  $ docker-compose build
```

5. Starting containers

- Linux:
```bash
  $ make run
```

Windows:
```bash
  $ docker-compose up -d
```

When running on Windows, a notification will pop up in the lower right corner of the screen. It is necessary to press the button `Share it!`

Stopping container on Linux:
```
  $ make stop
```

Stopping container on Windows:
```bash
  $ docker-compose down
```

6. Next (and also after any updating of the project) you need to go to the php container:

Linux:
```bash
  $ make to-php
```

Windows:
```bash
  $ docker exec -it php_drill bash
```
Then start it:
```bash
  $ composer install
```

Now, with containers running, the project backend is available at [https://hostname.loc](https://hostname.loc). But so far there is only a Symfony welcome page.
