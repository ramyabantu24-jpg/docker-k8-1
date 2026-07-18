# Use a valid Python base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy application code
COPY app.py .

# Install dependencies (Flask for web server)
RUN pip install flask

# Expose port 5000 for the web app
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
