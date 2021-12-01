# Mysql Playground image
> Tool keywords: Mysql, Docker
## Overview
The image is for practice of some advanced query with mysql.

## Requirement
- Docker

## Getting started

```sh
git clone https://github.com/Zhima-Mochi/Mysql-Playground-Image.git
cd Mysql-Playground-Image
docker-compose up -d # You can create your volume by editing docker-compose.yml
docker exec -it mysql-8-playground 
```
## Update database
When this repo has some new created table and data, you can use following command: 

```sh
docker exec -i mysql-8-playground sh -c 'exec mysql playground' < ./initdb.d/1_schema.sql
docker exec -i mysql-8-playground sh -c 'exec mysql playground' < ./initdb.d/2_data.sql
```
## Tables in playground
### find_begin_end 
Created at 2021-12-01
#### Description
| Field   | Type | Null | Key | Default | Extra |
|---------|------|------|-----|---------|-------|
| seq_num | int  | NO   | PRI | NULL    |       |
#### Example
| seq_num |
|:-------:|
|       1 |
|       2 |
|       3 |
|       8 |
|       9 |
|      10 |
|      14 |
|      15 |
|      16 |
|      18 |