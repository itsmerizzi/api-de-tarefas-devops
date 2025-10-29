# API de Tarefas – Projeto DevOps

Este repositório contém uma **API de Gerenciamento de Tarefas** simples desenvolvida com **Node.js e Express**, projetada para demonstrar os principais conceitos de **DevOps**, como **Integração Contínua (CI)**, **Infraestrutura como Código (IaC)** e **testes automatizados**.

O projeto foi criado como parte da disciplina *DevOps na Prática*, com foco na implementação de um pipeline completo utilizando **GitHub Actions** e **Terraform**.

---

## 📘 Visão Geral do Projeto

A **API de Tarefas** permite criar e listar tarefas por meio de endpoints RESTful. Seu principal objetivo é servir como um backend leve para demonstrar a integração de automações de CI/CD e scripts de infraestrutura.

### Funcionalidades
- Criação de novas tarefas (`POST /tarefas`)
- Listagem de tarefas (`GET /tarefas`)
- Testes automatizados com **Jest**
- Pipeline de Integração Contínua com **GitHub Actions**
- Provisionamento de infraestrutura com **Terraform**

---

## 🧱 Estrutura do Projeto

```
api-de-tarefas-devops/
├── .github/
│   └── workflows/
│       └── ci.yml
├── infra/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── tests/
│   └── app.test.js
├── app.js
├── server.js
├── package.json
├── package-lock.json
└── README.md
```

---

## ⚙️ Tecnologias Utilizadas

- **Node.js** – Ambiente de execução JavaScript
- **Express** – Framework web minimalista
- **Jest & Supertest** – Testes automatizados e simulação de requisições
- **GitHub Actions** – Integração Contínua (CI)
- **Terraform** – Infraestrutura como Código (IaC)

---

## 🚀 Executando o Projeto Localmente

### Pré-requisitos
Certifique-se de ter instalado:
- [Node.js](https://nodejs.org/) (versão 18 ou superior)
- [npm](https://www.npmjs.com/)
- [Terraform](https://developer.hashicorp.com/terraform/downloads) (opcional, para IaC)

### Execução local

```bash
git clone https://github.com/seu-usuario/api-de-tarefas-devops.git
cd api-de-tarefas-devops
npm install
node server.js
```

Acesse a API em:
```
http://localhost:3000
```

---

## 🧪 Executando os Testes

Para rodar os testes automatizados:

```bash
npm test
```

---

## 🔄 Integração Contínua (CI)

O pipeline de CI está definido em `.github/workflows/ci.yml`.

Ele é executado automaticamente a cada *push* ou *pull request* para a branch `main` e realiza as seguintes etapas:

1. Instalação de dependências (`npm install`)
2. Execução dos testes automatizados (`npm test`)
3. Verificação de build

Isso garante a qualidade e a estabilidade do código a cada nova atualização.

---

## ☁️ Infraestrutura como Código (IaC)

A pasta `infra/` contém os scripts **Terraform** responsáveis por automatizar o provisionamento da infraestrutura.

São disponibilizadas duas opções:
- **Implantação em instância AWS EC2**
- **Implantação em container Docker (simulação local)**

Para aplicar a infraestrutura (exemplo com AWS):

```bash
cd infra
terraform init
terraform plan
terraform apply
```

Após a execução, o Terraform exibirá o **IP público da instância**, onde a API estará acessível.
