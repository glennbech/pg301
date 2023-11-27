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