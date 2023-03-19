FROM python:3.10.9-bullseye

# Set the working directory
WORKDIR /gpt-discord-path

# Set the PYTHONPATH
ENV PYTHONPATH /gpt-discord-path

# Copy the requirements file and install the dependencies
COPY requirements.txt .
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Run the command to start the container
CMD ["python", "src/main.py"]
