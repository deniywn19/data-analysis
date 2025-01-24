# Data Cleaning and Formatting with Duckdb, sql, python

## Overview
This project demonstrates how to clean and format financial data using DuckDB and SQLite within a Docker environment.

## Setup This Repository

### Prerequisites
- Docker: [Install Docker](https://www.docker.com/)
- Docker Compose: Included with Docker Desktop

### Steps
1. Clone the repository:
   ```sh
   git clone <repository_url>
   cd <repository_directory>

## Creating this project
### 1. create project 
- open visual studio code, create your folder project and name it (on this project '1_data-cleaning)
### 2. create this files :
![ProjectandFiles](images/1_direktori.png)
1. dockerfile
      * buat `Dockerfile` untuk menginstal Jupyter dan menjalankan notebook. Berikut kodenya:

      ```dockerfile
      # Gunakan image Python resmi
      FROM python:3.9-slim

      # Setel direktori kerja di dalam container
      WORKDIR /app

      # Salin file ke dalam container
      COPY . .

      # Instal dependensi
      RUN pip install duckdb pandas jupyter

      # Jalankan Jupyter Notebook
      CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
      ```
2. download `Financials.csv`and put on dataset folder
3. datacleaning.ipynb
   * buat notebook baru
   * isi teks markdown *optional*
4. requirement.txt, readme.md optional optional

5. minimal struktur direktorinya seperti berikut:

   ```
   /1_data-cleaning
   ├── Dockerfile
   ├── dataset 
   |    ├── financial.csv
   └── notebook.ipynb
   ```
### 3. Build and Run Docker 
1. **Build Docker Image**
   * buka terminal di visual studio code 
   * Jalankan perintah berikut untuk membangun image Docker:

      ```bash
      docker build -t financial-data-cleaning .
      ```
   * berikut previewnya :

      ![docker-build](images/2_docker-build.png)
   * tunggu hingga proses docker-buildnya selesai :

      ![docker-build-done](images/3_docker-build-done.png)

2. **Jalankan Docker Container dan Jupiter Notebook**

   * Jalankan container dan map port untuk mengakses Jupyter Notebook dari browser Anda:

      ```bash
      docker run --rm -p 8888:8888 financial-data-cleaning
      ```
      ![docker-run](images/4_docker-run.png)

   * Setelah container berjalan, Anda akan mendapatkan URL dengan token untuk mengakses Jupyter Notebook di browser Anda.

      ![docker-run-done](images/5_docker-run-done.png)

   * tampilan jupiter notebook

      ![notebook-on-docker](images/6_notebook-on-docker.png)

## Data Cleaning
### 1. load data
   - write about load data on duck db
### 2. reformat
   - write about reformat on duck db
### 3. check duplicate
   - write about duplicate on duck db
### 4. check missing value
   - write about missing value on duck db

