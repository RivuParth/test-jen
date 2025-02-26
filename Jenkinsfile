pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY') // Jenkins AWS credential ID
        AWS_DEFAULT_REGION = 'ap-south-1'  // Set your desired region
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout the Terraform code from your repository
                git 'https://github.com/ranarahul3480/test-jen.git'
            }
        }

        stage('Initialize Terraform') {
            steps {
                // Initialize Terraform in the working directory
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                // Run terraform plan to see what changes will be applied
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Do you want to apply the changes?', ok: 'Apply'  // Optional approval step
                // Apply the Terraform changes
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        success {
            echo 'Terraform deployment successful!'
        }
        failure {
            echo 'Terraform deployment failed!'
        }
        always {
            // Clean up after the pipeline if needed
            echo 'Cleaning up...'
        }
    }
}
