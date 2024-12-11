# Use a valid base image
FROM python:3.9-slim
 
# Set the working directory in the container
WORKDIR /app
 
# Copy requirements.txt to the working directory
COPY requirements.txt .
 
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
 
# Copy the rest of the application files to the container
COPY . .
 
# Expose the application port
EXPOSE 80
 
# Define the command to run the application
CMD ["python", "app.py"]
