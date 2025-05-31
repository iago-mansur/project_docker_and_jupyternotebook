# Project: Docker and Jupyter Notebook

This project demonstrates how to run a Jupyter Notebook environment inside a Docker container for data analysis. It includes:
- A `data/` folder for datasets
- A `notebooks/` folder for Jupyter notebooks
- A working example of reading and writing CSV files

## 📁 Project Structure

```
project_docker_and_jupyternotebook/
├── data/ # Data files
├── notebooks/ # Jupyter notebooks
├── .dockerignore #
├── .gitignore #
├── docker-compose.yml # Docker Compose config
├── Dockerfile # Docker image definition
├── README.md #
└── requirements.txt # Python dependencies
```

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/iago-mansur/project_docker_and_jupyternotebook.git
cd project_docker_and_jupyternotebook
```

### 2. Build and run the Docker container
```bash
docker compose up --build
```

### 3. Accessing Jupyter Notebook
After running `docker compose up`, you will see output in your terminal. Look for a URL that starts with `http://127.0.0.1:8888` or `http://localhost:8888`. Copy this URL and paste it into your web browser.

### 4. Create & Access Notebooks
Navigate to the `notebooks/` folder inside Jupyter and start creating notebooks.

### 5.  Stopping the Container
To stop the container, go back to the terminal where `docker compose up` is running and press `Ctrl+C`.

To stop and remove the container (but keep the volume data):
```bash
docker compose down
```

- To stop and remove the container and its associated named volumes (use with caution, as it deletes data if you used a named volume instead of a bind mount):
```bash
docker compose down -v
```

## 🧪 Example Notebook

    main.ipynb: Demonstrates creating a CSV file and reading it using pandas.

## 🛠 Dependencies

    Python 3

    Jupyter Notebook

    pandas

    All dependencies are handled inside the Docker container — no manual installation is required.

## 📄 License

    Open source – created for learning and experimentation.