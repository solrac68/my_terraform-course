# 1. Course requirements
az login
az account list -o table
# Name                  CloudName    SubscriptionId                        State    IsDefault
# --------------------  -----------  ------------------------------------  -------  -----------
# SuscripcionEjemplo    AzureCloud   f100f4c1-da2b-44b6-b4d2-65aa3f34fb2d  Enabled  True
# Azure subscription 1  AzureCloud   6e70d454-bc4a-4b2e-869c-9d01ddf5141f  Enabled  False

az account set -s "Azure subscription 1"
az account list -o table
# Name                  CloudName    SubscriptionId                        State    IsDefault
# --------------------  -----------  ------------------------------------  -------  -----------
# SuscripcionEjemplo    AzureCloud   f100f4c1-da2b-44b6-b4d2-65aa3f34fb2d  Enabled  False
# Azure subscription 1  AzureCloud   6e70d454-bc4a-4b2e-869c-9d01ddf5141f  Enabled  True

# https://github.com/HoussemDellai/terraform-course

