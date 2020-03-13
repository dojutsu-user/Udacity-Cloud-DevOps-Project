pipeline {
    agent any
    stages {
        stage('Lint') {
            steps {
                sh '''docker run --rm -i hadolint/hadolint < Dockerfile'''
                sh 'tidy -q -e *.html'
            }
        }
        stage('Docker build') {
            steps {
                script {
                    dockerImage = docker.build('vaib79/udacity-capstone-k8scluster:0.4')
                    docker.withRegistry('', 'docker-hub-creds') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('K8S Deploy')  {
            steps {
                withAWS(credentials: 'aws-creds', region: 'us-west-2') {
                    sh 'aws eks --region=us-west-2 update-kubeconfig --name udacity-capstone-k8scluster'
                    sh 'kubectl apply -f k8s_deploy.yml'
                }
            }
        }
    }
}