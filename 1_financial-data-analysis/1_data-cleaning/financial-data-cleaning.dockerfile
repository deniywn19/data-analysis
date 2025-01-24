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