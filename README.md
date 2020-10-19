# Docker-Sphinx

## Description

Containerized Instance of Sphrix Documentation Engine (ReadTheDocs)

## Usage

1. Build Docker Image and Run

`docker-compose up --build -d`

2. Find Container ID

`docker ps`

3. Generate Sphinx Framework

`docker exec -it {{ container_id }} sphinx-quickstart`

4. Restart Docker Container

`docker-compose restart`

5. Navigate to Documentation.

`http://localhost:8000`


## Dependencies

| Name | Version | Description |
| :---: | :---: | --- |
| Sphinx | 3.2.1 | Python Based Documentation Engine |