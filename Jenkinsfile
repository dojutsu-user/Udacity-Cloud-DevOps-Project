pipeline {
    agent any
    stages {
        stage('Lint') {
            steps {
                sh '''docker run --rm -i hadolint/hadolint < Dockerfile'''
                sh 'pylint app.py'
            }
        }
        stage('Docker build') {
            steps {
                script {
                    dockerImage = docker.build('vaib79/UdacityCapstone-K8SCluster:latest')
                    docker.withRegistry('', 'docker-hub-creds') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('K8S Deploy')  {
            steps {
                withAWS(credentials: 'aws-creds', region: 'us-west-2') {
                    sh 'aws eks --region=us-west-2 update-kubeconfig --name UdacityCapstone-K8SCluster'
                    sh 'kubectl apply -f k8s_deploy.yml'
                }
            }
        }
    }
}