# Commands
- **test local build:** docker build -t k3sdemoapp:latest .
- **test local run:** docker run -p 8080:8080 k3sdemoapp:latest
- **argo submit:** argo submit -n argo --watch ./configs/argowf-workflow.yml