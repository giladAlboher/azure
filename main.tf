module "container_group" {
  source = "./module"
  
  resource_group_name = "myResourceGroup"
  location            = "West US"
  # You can provide values for other variables here if needed
}
output "container_group_ip" {
  value      = module.container_group.container_group_ip
  depends_on = [module.container_group]
}
