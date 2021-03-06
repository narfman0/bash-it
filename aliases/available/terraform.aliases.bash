cite 'about-alias'
about-alias 'terraform aliases'

# Aliases
alias tfcvfs='if [ -f "secrets.tfvars" ]; then echo "--var-file=secrets.tfvars"; fi'
alias tfinit='terraform init $(tfcvfs)'
alias tfci='if [ ! -d ".terraform" ]; then tfinit; fi'
alias tfa='tfci; terraform apply $(tfcvfs)'
alias tfaa='tfci; terraform apply -auto-approve $(tfcvfs)'
alias tfd='tfci; terraform destroy $(tfcvfs)'
alias tffu='tfci; terraform force-unlock $(tfcvfs)'
alias tfi='tfci; terraform import $(tfcvfs)'
alias tfp='tfci; terraform plan $(tfcvfs)'
alias tfs='tfci; terraform state $(tfcvfs)'
