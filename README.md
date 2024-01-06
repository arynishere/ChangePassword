# ChangePassword Ansible Playbook

This repository contains a Bash script and an Ansible playbook to streamline the process of changing SSH passwords on multiple servers.

## Prerequisites

- [Ansible](https://www.ansible.com/)
- Bash (should be available by default on most Unix-like systems)

## Getting Started

1. **Clone the repository:**

    ```bash
    git clone https://github.com/arynishere/ChangePassword.git
    cd ChangePassword
    ```

2. **Run the Bash script:**

    ```bash
    ./chpass.sh
    ```

    The script will prompt you for a username, a filename, and a hostname. The filename should contain necessary variables (e.g., `new_ssh_password`, `mysecretsalt`,) in YAML format and  `hostname` in txt format.
    <br>
    
    now just wait for the script to finish, you can check the script to see how the playbook is deployed.

## Example variables file (vault.yml)

```yaml
# vault.yml
new_ssh_password: 'your_plain_password'
mysecretsalt: 'your_secret_salt'
