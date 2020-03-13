# Udacity Cloud DevOps Project

This is the capstone project for [Udacity Cloud DevOps Nanodegree](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991).

## Pipeline

1. Code is pushed to the `master` branch of this repository.
2. Jenkins runs the tests agains the pushed code.
3. If the tests fail, it reports back to GitHub.
4. If the tests pass, it reports back to GitHub and updates the repository in Docker Hub. It then deploys the code with Kubernetes.
5. `Rolling Deployment` is used by Kubernetes to deploy the app.
