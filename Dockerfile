# Usar a imagem base do Python
FROM python:3.9-slim

# Definir o diretório de trabalho
WORKDIR /app

# Copiar arquivos para a imagem
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expor a porta da aplicação
EXPOSE 8106

# Comando para iniciar a aplicação
CMD ["python", "app.py"]
