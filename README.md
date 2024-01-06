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
    ./change-password.sh
    ```

    The script will prompt you for a username and a filename. The filename should contain necessary variables (e.g., `new_ssh_password`, `mysecretsalt`) in YAML format.

3. **Run the Ansible playbook:**

    ```bash
    ansible-playbook -i hosts_file playbook.yml --extra-vars "username=your_username filename=your_variables_file.yml"
    ```

    Replace `your_username` with the desired username and `your_variables_file.yml` with the filename containing your variables.

## Example variables file (vault.yml)

```yaml
# vault.yml
new_ssh_password: 'your_plain_password'
mysecretsalt: 'your_secret_salt'
