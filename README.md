# Minecraft Server Setup Scripts

This repository contains scripts to automate the setup and management of a Minecraft server using Docker.

## Features

- **Automated Setup**: Scripts to build and run a Minecraft server(only vanilla for now).
- **Easy Configuration**: Simplifies the process of setting up a Minecraft server.

## Prerequisites

Ensure you have the following installed on your system:

- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)
- **Bash**: Linux shell to execute the scripts.

## Getting Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/ahmed3ro/minecraftserver.git
   cd minecraftserver
2. **Build the image**:
    ```bash
   docker build -t minecraftserver:1.0 .
   ```
   to choose a specific version use 
   --build-arg VERSION="version"
   by defaultit is set to latest 
2. **Run the container**:
    ```bash
   docker container run -p 25565:25565 minecraftserver:1.0
