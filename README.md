# Build-a-Complete-Medical-Chatbot-with-LLMs-LangChain-Pinecone-Flask-AWS

A Retrieval-Augmented Generation (RAG) Question Answering Chatbot built with Python, LangChain, Pinecone, Flask, and AWS. This project leverages LLMs (Large Language Models) and retrieval techniques to answer user queries based on a custom knowledge base.

---

## How to run?

### STEPS:

#### 1. Clone the repository

```bash
git clone
cd 
```

#### 2. Create a conda environment

```bash
conda create -n medichatbot python=3.11 -y
conda activate medichatbot
```

#### 3. Install the requirements

```bash
pip install -r requirements.txt
```

#### 4. Create a `.env` file in the root directory and add your Pinecone & OpenAI credentials:

```ini
PINECONE_API_KEY = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
OPENAI_API_KEY = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
```

#### 5. Store embeddings to Pinecone

```bash
python store_index.py
```

#### 6. Run the application

```bash
python app.py
```

Now, open up `localhost:` in your browser to interact with the chatbot.

---

## Techstack Used

- Python
- LangChain
- Flask
- OpenAI
- Pinecone

---

## AWS-CICD-Deployment-with-Github-Actions

### 1. Login to AWS console.

### 2. Create IAM user for deployment

- **With specific access:**
  - EC2 access (virtual machine)
  - ECR (Elastic Container Registry) to save your Docker image in AWS

- **Deployment steps:**
  1. Build Docker image of the source code
  2. Push your Docker image to ECR
  3. Launch your EC2 instance
  4. Pull your image from ECR in EC2
  5. Launch your Docker image in EC2

- **Required IAM Policies:**
  - `AmazonEC2ContainerRegistryFullAccess`
  - `AmazonEC2FullAccess`

### 3. Create ECR repo to store/save Docker image

### 4. Create EC2 machine (Ubuntu)

### 5. Install Docker in EC2 Machine

```bash
# Optional
sudo apt-get update -y
sudo apt-get upgrade

# Required
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker ubuntu
newgrp docker
```

### 6. Configure EC2 as self-hosted runner

Go to GitHub:  
`Settings > Actions > Runners > New self-hosted runner > Choose OS > Run the provided commands`


### 7. Setup GitHub secrets

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_DEFAULT_REGION`
- `ECR_REPO`
- `PINECONE_API_KEY`
- `OPENAI_API_KEY`

---

## Project Structure

```
.
├── app.py               # Main application entrypoint
├── requirements.txt     # Python dependencies
├── Dockerfile           # Docker build instructions
├── store_index.py       # Script to store embeddings to Pinecone
├── ...                  # Other source files and assets
```

---

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](LICENSE)  
