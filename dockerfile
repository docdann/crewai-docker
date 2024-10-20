# Use the official Python 3.11 image from Docker Hub
FROM python:3.11

# Set environment variables for Python
ENV PYTHONUNBUFFERED=1

# Set environment variables for OpenAI API (excluding the API key)
ENV OPENAI_API_BASE='http://host.docker.internal:11434'
ENV OPENAI_MODEL_NAME='ollama/llama3.1'

# Upgrade pip and install crewai with tools
RUN python -m pip install --upgrade pip \
    && pip install crewai \
    && pip install 'crewai[tools]'

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Command to run your application (adjust as needed)
CMD ["python", "async_crew.py"]
