# Use an official Python image as the base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/

# Install system dependencies first
RUN apt-get update -y

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . /app/

# Expose the port Flask will run on
EXPOSE 5000

# Set the environment variable for Flask to run
ENV FLASK_APP=app.py

# Run the Flask application
CMD ["flask", "run", "--host", "0.0.0.0"]

