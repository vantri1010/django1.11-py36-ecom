# Start from the standard Ubuntu 18.04 image
FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y build-essential

# Install pip
RUN apt-get install -y python3-pip
RUN apt-get install -y libjpeg-dev zlib1g-dev
RUN pip3 install --no-cache-dir --upgrade pip setuptools wheel
RUN pip3 install --no-cache-dir Pillow

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Create and set the working directory
RUN mkdir /code
WORKDIR /code

# Copy the project files into the container
COPY . /code

# Install the dependencies
RUN pip3 install --no-cache-dir -r /code/src/requirements.txt

EXPOSE 8000

# Run migrations and start the Django development server
# Default command to run migrations and start the server
CMD ["bash", "-c", "cd /code/src && python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000"]