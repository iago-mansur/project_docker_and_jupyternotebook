# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements.txt into the container
COPY requirements.txt .

# Install dependencies
# --upgrade pip: Ensures pip is up-to-date
# -r requirements.txt: Installs all packages listed in requirements.txt
RUN pip install --upgrade pip \
 && pip install -r requirements.txt

# Install Jupyter Lab
# We install jupyterlab as it's the modern interface for Jupyter,
# and it includes the classic notebook.
RUN pip install jupyterlab

# Expose the Jupyter port (optional, as docker-compose handles it, but good practice)
EXPOSE 8888

# Set the entrypoint to start Jupyter Lab
# --allow-root: Allows Jupyter to run as root (common in Docker for simplicity,
#               but consider a non-root user in production).
# --ip=0.0.0.0: Makes Jupyter accessible from outside the container.
# --port=8888: Specifies the port Jupyter listens on.
# --no-browser: Prevents the container from trying to open a browser.
# --notebook-dir=/app: Sets the working directory for Jupyter to /app,
#                       which is where our volume will be mounted.
CMD ["jupyter", "lab", "--allow-root", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--notebook-dir=/app"]
