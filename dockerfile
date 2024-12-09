# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir flask

# Expose the application port
EXPOSE 80

# Define the command to run the app
CMD ["python", "flask-app.py"]