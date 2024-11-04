FROM python:3

# Set environment variable to ensure Python output is sent straight to terminal (unbuffered)
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Copy PDM files to the container
COPY pdm.lock pdm.lock
COPY pyproject.toml pyproject.toml

# Install PDM
RUN pip install --upgrade pip && pip install pdm

# Install dependencies using PDM
RUN pdm install --prod

# Copy the rest of the application code
COPY . /app

# Expose the port for the application
EXPOSE 8000
