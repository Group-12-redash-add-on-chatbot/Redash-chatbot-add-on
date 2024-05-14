# 10 Academy week 3 challenges

<div align="center">
  <h1 align="center">Redash chatbot add-on: LLM based chatbot for Advanced Data Analytics, Visualisation, and Automated Insight Extraction</h1>
</div>


## Overview and Objective
 In this project, we are going to build a novel Redash chat add-on that extract insights from multiple Redash dashboards and connected databases using natural language. This Redash add-on chatbot will be able to interact with Redash dashboards and assist in transforming data collected from YouTube sources. These insights will be instrumental in making strategic decisions and gaining a competitive advantage. The primary goal of this project is to create a Redash chatbot that utilizes state-of-the-art Large Language Models (LLMs) to help users interact with their data more intuitively.

## Scope of the Project
The scope of this project extends to developing a Redash add-on in the frontend and an intelligence backend that translates user SQL queries like make the queris into Auto generate SQL queries and visualizations
## Key Features
 - Understand viewer trends and preferences.
 - Optimize content for better engagement.
 - Simplify the data querying process using natural language interactions.
 - Generate dynamic visualizations based on user queries.
 - Extract and deliver insights automatically, helping users make informed decisions quickly.
 - Summary of visualisations in the current dashboard
 - Auto generate SQL queries and visualisations

## Installation

1. Python 3.x and pip (Usually bundled with Python installation, we used python version = 3.10.2)

2. Git installed on your machine.

3. Virtualenv. You can install it using pip:
    ```sh
    pip install virtualenv

### Steps

1. **Clone the Repository**
    ```sh
     git@https://github.com/Group-12-redash-add-on-chatbot/redash-chatbot-add-on.git
    ```
2. **Create and Activate a Virtual Environment**
    Navigate to the root directory of the project and create a virtual environment named 'venv', then activate it:
    ```sh
    cd redash-chatbot-add-on
    python -m venv venv  | virtualenv venv
    source venv/bin/activate
    ``
    
3. **Install Requirements**
    While inside the virtual environment, install the project requirements:
    ```sh
     $ sudo apt -y install docker.io docker-buildx docker-compose-v2
    ## NOTE: You may need to remove the corresponding docker plugins first if the above command fails
    $ sudo apt -y install build-essential curl docker-compose pwgen python3-venv xvfb


    ```
    ### Add your user to the "docker" group
    ```sh
    $ sudo usermod -aG docker $USER
    ```
    ## Install Node Version Manager
```sh
  $ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  ## You may need to save as a script file first, then change she-bang to point to correct shell
  ```
Now log out of your desktop, then back in again, for the group change to become effective and nvm to be available

 ## Install NodeJS version 18
```sh
  $ nvm install --lts 18
  $ nvm alias default 18
  $ nvm use 18
  ```

 ## Install Yarn 1.x
```sh
  $ npm install -g yarn@1.22.22
  ```

 ##  make compose and build
```sh
  yarn
  make build
  make Compile_build
  ```

 ##  Start Redash locally, using the docker images you just built
```sh
  cd redash
  make up
  ```



### The Redash web interface should also be available at http://localhost:5001, ready to be configured:

## Screenshots

Navigate to the `screenshots` folder to view visual representations of the project.


## References

* https://www.python.org/ 
* https://www.postgresql.org/
* https://github.com/getredash/redash/wiki/Local-development-setup
* https://github.com/RYees/redash-chatgpt-plugin
* https://python.langchain.com/v0.1/docs/get_started/quickstart







