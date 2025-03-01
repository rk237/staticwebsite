# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
#COPY app/ ./app
COPY . .

# Copy the requirements file from docker-project/
#COPY requirements.txt .

# Install Python dependencies
#RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application's port
EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]
