skrive instrukjsoner til sensor her


Forklaring for githubactions flow til å kjøre i egen githubkonto

alaa008:~/environment/pg301/kjell/hello_world (master) $ docker build -t kjellpy . 
Sending build context to Docker daemon  5.632kB
Step 1/5 : FROM python:3.9-slim
3.9-slim: Pulling from library/python
1f7ce2fa46ab: Pull complete 
1fb7efcf9eab: Pull complete 
07483b63eff3: Pull complete 
3d52c1551390: Pull complete 
732bf57bb511: Pull complete 
Digest: sha256:c54eecbf55a7527c913aef9a90e310c03bb78bea2204be57f39b28e43ab733ab
Status: Downloaded newer image for python:3.9-slim
 ---> db813260829a
Step 2/5 : WORKDIR /app
 ---> Running in 9c97263124eb
Removing intermediate container 9c97263124eb
 ---> ecfd16cb4e03
Step 3/5 : RUN pip install--no-chach-dir -r requirements.txt
 ---> Running in 388b3e136584
ERROR: unknown command "install--no-chach-dir"
The command '/bin/sh -c pip install--no-chach-dir -r requirements.txt' returned a non-zero code: 1

Fikk feilmeldinghen med docker

Slet en del med navn på bucket, så tilslutt ble det et veldig fjasete navn (litt fordi jeg ble sint...)
men når det kom på plass så det til å fungere! Jeg fant den i aws



OPPGAVE 2 
A
    legg inn bilder og forklar
    
B
    
