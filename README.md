Будут проигнорированны:

Все файлы в дирректории .terraform
**/.terraform/*

файлы с расширением tfstate и любым вторым расширением 
*.tfstate
*.tfstate.*

файл логов
crash.log

файлы с расширением tfvars
*.tfvars

файлы
override.tf
и
override.tf.json

любые файлы, оканчивающиеся на
*_override.tf
*_override.tf.json

# Include override files you do wish to add to version control using negated pattern
#
# !example_override.tf

# Include tfplan files to ignore the plan output of command: terraform plan -out=tfplan
# example: *tfplan*

файлы
.terraformrc
и
terraform.rc