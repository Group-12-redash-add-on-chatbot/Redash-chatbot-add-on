<div align="center">


  <h3 align="center">Project Title: Redash chatbot add-on: LLM based chatbot for Advanced Data Analytics, Visualisation, and Automated Insight Extraction</h3>

  <p align="center">
  The aim of this project is to build a novel Redash chat add-on that our team members 
  can use to extract insight from multiple Redash dashboards and from connected databases using natural language. 
    <br />
    <a href="https://github.com/Group-12-redash-add-on-chatbot/redash-chatbot-add-on"><strong>Explore the docs »</strong></a>
    <br />
    <br />
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#Buisness Objective">Scope of the Project</a></li>
    <li><a href="#scope_of_the_project">Scope of the Project</a></li>
    li><a href="#Features">Features</a></li>
    <li>
      <a href="#Installation">Installation</a>
    </li>
    <li><a href="#Packages">Packages</a></li>
    <li><a href="#work_plan">Work Plan</a></li>
    
  </ol>
</details>

<!-- Buisness Objective-->
### Buisness Objective
The Academy has made a request for business intelligence dashboards that go beyond providing mere
monitoring capabilities for their business processes. They are seeking dashboards that can assist in
transforming the data collected from various systems like YouTube, Slack, and Gmeet into actionable
insights. These insights will be instrumental in making strategic decisions and gaining a competitive
advantage by compare.

<!-- scope_of_the_project-->
### Scope of the Project
The scope of this project extends to developing a Redash add-on in the frontend
and an intelligence backend that translates user queries into one of the following
• Summary of visualizations in the current dashboard
• Insight about data returned by existing SQL queries
• Auto generate SQL queries and visualizations
• Auto generate new Redash dashboards from existing and auto generated SQL queries and its
associated visualizations.

<!-- Features-->
### Features
* Summary of visualisations in the current dashboard
* Insight about data returned by existing SQL queries
* Auto generate SQL queries and visualisations 
* Auto generate new Redash dashboards from existing and auto generated SQL queries and its associated visualisations.


<!-- Installation-->
### Installation

* https://www.python.org/ <a>Python</a>
* https://www.postgresql.org/<a>Postgres</a>
* https://github.com/getredash/redash/wiki/Local-development-setup<a>Redash Installation</a>
* https://github.com/RYees/redash-chatgpt-plugin<a>redash-chatgpt-plugin</a>

<!-- Packages-->
### Packages
add this packages on the docker file
* RUN pip install langchain-openai
* RUN pip install pandas



<!-- Work Plan -->
### Work Plan

* Design a schema for the data in postgres
* Load the data on the database
* Install Redash
* Add the redash chatbot
* Connect Redash to Postgres DB
* Connect the OpenAI API model with the database
* Train the database to give desired






