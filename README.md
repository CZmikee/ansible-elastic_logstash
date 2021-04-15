# Ansible-elastic_logstash install play

Ansible play that installs Elastic and Logstash on the same node, nodes can be created via Terraform.

### Mandatory parts before running the play:
- Set Terraform variables
    *   json_file_path 
    *   project_id
- Set Ansible group_vars per your system
    *   Set system passwords that are set by the play
    *   Set http cert password
    *   Set cluster transport cert password
- Push in files directories files needed for Elastic  under roles/elastic/files/
    *   http cert in p12 format with corresponding password
    *   cluster transport cert in p12 format with corresponding password
- Push in files directories files needed for Logstash under roles/logstash/files/
    *   CA cert corresponding to the certs above
    *   pipeline files ... expected and currently set as inbound.pipeline, transaction.pipeline, gwaccesslog.pipeline, accesslog.pipeline, output.pipeline