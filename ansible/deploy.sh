#!/bin/bash

# añadir tantas líneas como sean necesarias para el correcto despligue
ansible-playbook -i hosts playbook-kubernetes.yml
ansible-playbook -i hosts playbook-app.yml

