# DevOps Bootcamp Project — Aishah

## URLs

- Application: https://web.aishahzahirun.asia
- Monitoring: https://monitoring.aishahzahirun.asia
- Repository: https://github.com/aishahzahirun96/devops-bootcamp-project

## Architecture

- Region: ap-southeast-1
- VPC: 10.0.0.0/24
- Public subnet: 10.0.0.0/25
- Private subnet: 10.0.0.128/25
- Web: 10.0.0.5
- Controller: 10.0.0.135
- Monitoring: 10.0.0.136

## Terraform

Backend S3 
AWS: AWS>S3>Create bucket;region:
Terraform: define 
bucket (nama bucket)
key (laluan atau folder/nama fail status di dalam bucket)
region (region aws bucket berada)
encrypt (untuk encryption)
lockfile (supaya )



Terangkan penyediaan backend S3 dan langkah Terraform.
Masukkan screenshot network, EC2, IAM profile dan security group.

## Docker dan ECR

Terangkan multi-stage build, ujian aplikasi dan push image ke ECR.

## Ansible

Terangkan inventory dan pelaksanaan dari controller.
Sertakan screenshot playbook pertama dan pelaksanaan semula.

## Monitoring

Terangkan aliran node_exporter → Prometheus → Grafana.
Sertakan target UP, dashboard dan penggunaan grafana-data.

## Cloudflare

Terangkan A record web dan tunnel monitoring.
Sertakan screenshot tanpa mendedahkan token.