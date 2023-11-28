## OPPGAVE 1


For å gjennomføre denne oppgaven/workflowen (og de kommende) må du 
konfigurere følgende secrets:
- AWS_ACCESS_KEY_ID 
- AWS_SECRET_ACCESS_KEY

Jeg gjorde om det hardcodete bucket-navnet til å bruke miljøvariabel slik:

```
try:
    BUCKET_NAME = os.environ['BUCKET_NAME']
except KeyError:
    raise ValueError("The environment variable <BUCKET_NAME> seems to be missing.")
```

```
Environment:
        Variables:
          BUCKET_NAME: !Ref ImageS3Bucket
```
Ovenfor er endringen gjort slik SAM kan benytte S3 bucket`en.

## Oppgave 1
**A**

Slet en del med navn på bucket, så tilslutt ble det et veldig fjasete navn (litt
fordi jeg ble sint...) men når navnet kom på plass så det til å fungere! 


**B**
Jeg hadde problemer med å dockerize, derav ligger det er par kommenterte linjer
som jeg fikk bruk for tidligere. De ville jeg ta vare på om jeg muligens måtte 
ta de ibruk igjen
```
FROM python:3.9-slim

# Create a user to run the app marked out for now
# RUN useradd -m appuser

WORKDIR /app

COPY requirements.txt .

# installs the required deps
RUN pip install --no-cache-dir -r requirements.txt

# create a copy of the application
COPY . .

# Switch to the non-root user comment out if RUN useradd -m appuser is commented
# USER appuser

CMD ["python", "./app.py"]
```
![image](img/opg1B.png)