# Dockerfile

# Base image
FROM python:3.12.1


CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# Set working directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy project files
COPY . /code/