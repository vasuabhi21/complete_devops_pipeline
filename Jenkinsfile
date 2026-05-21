pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                git branch: 'main',
                url: 'https://github.com/vasuabhi21/complete_devops_pipeline'
            }
        }

        stage('Build Maven Project') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Run Tests') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops-pipeline .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run --name devops-container devops-pipeline'
            }
        }
    }
}