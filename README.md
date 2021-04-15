# Ansible-elastic_logstash install play

Ansible play that installs Elastic and Logstash on the same node, nodes can be created via Terraform.

### Mandatory parts before running the play:
- Set Terraform variables
    *   json_file_path 
    *   project_id
- Push in files directories files needed for Elastic
    *   http cert in p12 format
    *   cluster transport cert in p12 format
- Push in files directories files needed for Logstash
    *   CA cert
    *   pipeline files