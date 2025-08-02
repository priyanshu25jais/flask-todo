# Use official Python image
FROM python:3.11


# Set working directory in the container
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project
COPY . .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
