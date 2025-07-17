# Imersão DevOps - Alura Google Cloud

![Licença MIT](https://img.shields.io/badge/Licença-MIT-green.svg)
![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Feito com Python](https://img.shields.io/badge/feito%20com-Python-blue)
![Docker](https://img.shields.io/badge/containerizado%20com-Docker-2496ED?logo=docker&logoColor=white)
![Deploy no Google Cloud Run](https://img.shields.io/badge/deploy-Google%20Cloud%20Run-blue?logo=googlecloud)

Este projeto foi desenvolvido durante a **Imersão DevOps** promovida pela **Alura** em parceria com o **Google Cloud**. O objetivo foi aplicar práticas modernas de DevOps com foco em containers, integração contínua e deploy em cloud utilizando o **Google Cloud Run**. 

API desenvolvida com FastAPI para gerenciar alunos, cursos e matrículas em uma instituição de ensino.

## 📦 Sobre o Projeto

A aplicação consiste em uma API RESTful simples, containerizada com **Docker**, automatizada com **CI/CD**, e implantada na nuvem via **Google Cloud Run**.

Durante a imersão, foram abordados:

- Docker e conceitos de containerização
- Criação de pipelines de CI/CD
- Deploy automático usando Google Cloud Run
- Monitoramento e boas práticas de DevOps

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

## Passos para subir o projeto

1. **Faça o download do repositório:**
   [Clique aqui para realizar o download](https://github.com/guilhermeonrails/imersao-devops/archive/refs/heads/main.zip)

2. **Crie um ambiente virtual:**
   ```sh
   python3 -m venv ./venv
   ```

3. **Ative o ambiente virtual:**
   - No Linux/Mac:
     ```sh
     source venv/bin/activate
     ```
   - No Windows:
     ```sh
     venv\Scripts\activate
     ```

4. **Instale as dependências:**
   ```sh
   pip install -r requirements.txt
   ```

5. **Execute a aplicação:**
   ```sh
   uvicorn app:app --reload
   ```

6. **Acesse a documentação interativa:**

   Abra o navegador e acesse:  
   [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.

---

## Autenticando no Google Cloud

```sh
gcloud auth login
gcloud config set project PROJECT_ID
gcloud run deploy --port=8000

```

## 🔗 Documentação da API (Swagger)

A aplicação está em produção e a documentação interativa (gerada via Swagger UI) pode ser acessada abaixo:

👉 [**Acessar Documentação da API**](https://api-199108342094.southamerica-east1.run.app/docs)

> Use essa interface para explorar os endpoints da API, testar requisições e entender a estrutura dos dados.

---

## 🛠️ Tecnologias Utilizadas

- Python (FastAPI)
- Docker
- GitHub Actions (CI/CD)
- Google Cloud Run
- Swagger UI (OpenAPI)
- Git

---

## 🚀 Como Executar Localmente

1. Clone o repositório:

   ```bash
   git clone https://github.com/laurofrancisco/imersao-devops-main.git
   cd imersao-devops-main

2. Execute com Docker:
   ```bash
   docker build -t imersao-api .
   docker run -p 8000:8000 imersao-api

3. Acesse localmente em:
   http://localhost:8000/docs

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `models.py`: Modelos do banco de dados (SQLAlchemy).
- `schemas.py`: Schemas de validação (Pydantic).
- `database.py`: Configuração do banco de dados SQLite.
- `routers/`: Diretório com os arquivos de rotas (alunos, cursos, matrículas).
- `requirements.txt`: Lista de dependências do projeto.

---

- O banco de dados SQLite será criado automaticamente como `escola.db` na primeira execução.
- Para reiniciar o banco, basta apagar o arquivo `escola.db` (isso apagará todos os dados).

---

## 📄 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](./LICENSE) para mais informações.
