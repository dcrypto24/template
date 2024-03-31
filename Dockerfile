# Use a base image with Python and FastAPI installed
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the FastAPI application file into the container
COPY ./app /app

# Install any dependencies
RUN pip install fastapi uvicorn

EXPOSE 80
