
#Overall, Dockerfiles are a powerful tool for building, deploying, and managing applications. 
#They offer a number of benefits, such as consistency, reproducibility, portability, and efficiency. 
#If you are developing or deploying applications, I highly recommend using Dockerfiles.

# Changed the base image to python:3.10.5-slim since the original base image was not found
FROM python:3.9-slim
RUN python -m pip install --upgrade pip

# # Set the working directory to /app
# WORKDIR /app

# Set the working directory to /app
WORKDIR /app1

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the packages listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 8000 to allow external access
EXPOSE 8000

# Start the Uvicorn server
# CMD ["uvicorn", "router.main:app", "--host", "0.0.0.0", "--port", "8000"]

CMD ["uvicorn", "router.app:app", "--host", "0.0.0.0", "--port", "8000"]