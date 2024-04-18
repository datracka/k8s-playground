FROM python:3.12.3-slim-bullseye

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install Pipenv
RUN pip install pipenv

# Install dependencies using Pipenv
RUN pipenv install --system --deploy

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
