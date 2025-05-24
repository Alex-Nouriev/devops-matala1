# Use official lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY app/requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
# using copy twise for copping the same files, one time for requirements and one time for the rest of the files include requirements.txt (bad practice)
COPY app/ .

# Expose service port
EXPOSE 5000

# Run the application
CMD ["python", "main.py"]


# comments not needed