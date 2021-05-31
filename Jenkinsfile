pipeline {
    agent any
    environment{
                AWS_ACCESS_KEY_ID = credentials('access_key')
                AWS_SECRET_ACCESS_KEY = credentials('access_secret')
            }
            
    stages {
        stage('Starting To Execute'){
            steps{
                echo """Hello World!!!
                We are going to start the process"""
            }
        }
        
      /*  stage('Fetch from Git'){
            steps{
                echo "GIT Fetching....."
                git credentialsId: 'b3f42fe7-01a6-4cf7-892a-f0827497fa29', url: 'https://github.com/jagannathdora/aws.git'
            }
        }
        */
        
        stage('Terraform init'){
            steps{
                sh """ echo "Workspace Directory is $WORKSPACE..."
                pwd
                cd $WORKSPACE
                terraform init """
            }
        }
        stage('Apply'){
            steps{
                sh 'terraform apply -input=false -auto-approve'
            }
        }
        
        stage('Build Test'){
            steps{
                echo "Hooray!!!!"
            }
        }
        
        stage('Destroy'){
            steps{
                sh 'terraform destroy -input=false -auto-approve'
            }
        }
        
    }
}
