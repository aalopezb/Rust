# Hello World - Rust 

## 📄 Project Description
This is a simple "Hello World" web application built using **Rust**. The application listens on port `8080` and returns a "Hello World from Rust!" message when accessed.

## 🗂 Project Structure
rust/ 
├── Dockerfile 
├── Cargo.toml 
├── main.rs 
└── README.md

## 🛠 Technologies Used
- Rust
- Docker

## 🚀 How to Run

### 1. Build the Docker Image
docker build -t hello_rust .
docker run -p 8080:8080 hello_rust 
Open your browser and navigate to: http://localhost:8080

## Creator
https://github.com/aalopezb