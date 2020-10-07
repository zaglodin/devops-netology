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

файлы
.terraformrc
и
terraform.rc