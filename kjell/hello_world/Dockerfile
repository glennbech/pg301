FROM python:3.9-slim

WORKDIR /app

# installs the required deps
RUN pip install--no-chach-dir -r requirements.txt

# create a copy of the application
COPY . .

CMD ["python", "./app.py"]