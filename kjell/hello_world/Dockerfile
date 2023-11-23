FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

# installs the required deps
RUN pip install --no-cache-dir -r requirements.txt

# create a copy of the application
COPY . .

CMD ["python", "./app.py"]