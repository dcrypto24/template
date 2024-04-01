# Use a base image with Python and FastAPI installed
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
# RUN pip install fastapi uvicorn

COPY ./app /app

# Install any dependencies
