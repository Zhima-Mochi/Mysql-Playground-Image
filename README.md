# Mysql Playground Image
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
When this repo has something new, you can use following command to update your database (the tables might be truncated): 

```sh
docker exec -i mysql-8-playground sh -c 'exec mysql playground' < ./initdb.d/1_schema.sql
docker exec -i mysql-8-playground sh -c 'exec mysql playground' < ./initdb.d/2_data.sql
```
## Tables in playground
### find_begin_end 
Created at 2021-12-01
#### Description
| Field   | Type | Null | Key | Default | Extra |
| ------- | ---- | ---- | --- | ------- | ----- |
| seq_num | int  | NO   | PRI | NULL    |       |
#### Example
| seq_num |
| :-----: |
|    1    |
|    2    |
|    3    |
|    8    |
|    9    |
|   10    |
|   14    |
|   15    |
|   16    |
|   18    |

## Tasks
### Find begin and end
The seq_num in table find_begin_end are not continuous. Write an SQL query to find the
begin and end of continuous ranges of seq_num in table find_begin_end.
#### Example: 
| seq_num |
| :-----: |
|    1    |
|    2    |
|    3    |
|    8    |
|    9    |
|   10    |
|   14    |
|   15    |
|   16    |
|   18    |

#### Example output:  
| begin_seq | end_seq |
| --------- | ------- |
| 1         | 10      |
| 14        | 16      |
| 18        | 18      |
#### Actual table output
| begin_seq | end_seq |
| --------- | ------- |
| 1         | 10      |
| 14        | 29      |
| 49        | 304     |
