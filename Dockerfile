FROM python:3.9-slim

# Instalar dependencias del sistema para mysqlclient
RUN apt-get update && apt-get install -y \
    default-libmysqlclient-dev \
    build-essential \
    && apt-get clean

# Establecer el directorio de trabajo
WORKDIR /workspace

# Copiar el archivo requirements.txt
COPY requirements.txt .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el archivo main.py
COPY main.py .

# Puerto donde se ejecutará la API
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
