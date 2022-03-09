   15  yum install git -y 
   16  ls
   17  vim .bashrc 
   18  source .bashrc 
   19  git clone https://github.com/amitvashisttech/terraform-dxc-2022-March-08.git
   20  ls
   21  cd terraform-dxc-2022-March-08/
   22  ls
   23  cd 02-First-Deployment/
   24  ls
   25  cd ..
   26  ls
   27  cp -rf 02-First-Deployment 03-CLI-Common-Exec
   28  ls
   29  cd 03-CLI-Common-Exec/
   30  ls
   31  terraform init 
   32  ls
   33  ls -a 
   34  yum install tree -y 
   35  tree .terraform
   36  ls
   37  cat .terraform.lock.hcl 
   38  terraform plan 
   39  terraform apply 
   40  vim main.tf 
   41  terraform plan 
   42  terraform plan -out build-plan 
   43  ls
   44  cat build-plan 
   46  terraform show build-plan 
   47  terraform plan -destroy -out destroy-plan 
   48  terraform apply build-plan 
   49  ls 
   50  terraform show 
   51  terraform plan -destroy -out destroy-plan 
   52  ls
   53  terraform show 
   54  ls
   55  terraform show 
   56  terraform refresh 
   57  terraform show 
   58  terraform apply 
   59  terraform apply destroy-plan 
   60  terraform plan -destroy -out destroy-plan 
   61  terraform apply destroy-plan 
   62  ls
   63  history 
   64  ls
   65  terraform apply 
   66  terraform apply --auto-approve 
   67  vim main.tf 
   68  terraform apply 
   69  ls
   70  history > README.md
