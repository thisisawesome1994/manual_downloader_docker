# Use the official Python image from the Docker Hub as the base image
FROM python:3.9-slim

# Set environment variables to prevent Python from writing .pyc files and to buffer stdout and stderr
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install the necessary packages using pip3
RUN pip3 install --no-cache-dir xnxx-dl yt-rss-dl pdf-rss-dl qobuz-dl

# Create a directory for your application
WORKDIR /app

# Keep the container running by using a tail command
CMD ["tail", "-f", "/dev/null"]
