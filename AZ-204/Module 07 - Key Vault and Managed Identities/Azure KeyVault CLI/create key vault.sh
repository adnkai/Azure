# Create resource group
az group create --name SecurityGroup --location westus
# Create Key Vault resource
az keyvault create --name contosovault --resource-group SecurityGroup --location westus
# Set secret in Key Vault
az keyvault secret set --vault-name contosovault --name DatabasePassword --value 'Pa5w.rd’
# Show value of secret in Key Vault
az keyvault secret show --vault-name contosovault --name DatabasePassword