# Usa a imagem base do Python com a versão 3.13 e Alpine Linux para uma imagem menor
FROM python:3.13.4-alpine3.22

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo de dependências para o diretório de trabalho
COPY requirements.txt .
# Instala as dependências do projeto, sem cache para reduzir o tamanho da imagem
RUN pip install --no-cache-dir -r requirements.txt

# Copia todos os arquivos do projeto para o diretório de trabalho
COPY . .

# Expõe a porta que a aplicação FastAPI irá rodar (padrão é 8000)
EXPOSE 8000

# Define o comando para iniciar a aplicação usando Uvicorn
# O host 0.0.0.0 permite que a aplicação seja acessível externamente ao contêiner
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]