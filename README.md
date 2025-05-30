# Project Docker and Jupyter Notebook
Project to develop an application on Jupyter Notebook inside a Docker container.

## To Use

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/iago-mansur/project_docker_and_jupyternotebook.git
    cd project_docker_and_jupyternotebook
    ```

2.  **Build and run the Docker container:**
    ```bash
    docker compose up --build
    ```

3.  **Accessing Jupyter Notebook:**
    After running `docker-compose up` (or `docker compose up`), you will see output in your terminal. Look for a URL that starts with `http://127.0.0.1:8888` or `http://localhost:8888`. Copy this URL and paste it into your web browser.

4.  **Stopping the Container:**
    To stop the container, go back to the terminal where `docker compose up` (or `docker compose up`) is running and press `Ctrl+C`.

    To stop and remove the container (but keep the volume data):
    ```bash
    docker compose down
    ```

    To stop and remove the container and its associated named volumes (use with caution, as it deletes data if you used a named volume instead of a bind mount):
    ```bash
    docker compose down -v
    ```