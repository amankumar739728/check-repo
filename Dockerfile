#Overall, Dockerfiles are a powerful tool for building, deploying, and managing applications. 
#They offer a number of benefits, such as consistency, reproducibility, portability, and efficiency. 
#If you are developing or deploying applications, I highly recommend using Dockerfiles.

FROM python:3.10.5-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["uvicorn", "router.main:app", "--host", "0.0.0.0", "--port", "8000"]