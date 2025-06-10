# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirement file and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy all other files
COPY . .

# Run the app
CMD ["python", "app.py"]
