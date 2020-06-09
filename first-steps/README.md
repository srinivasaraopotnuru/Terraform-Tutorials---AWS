### TERRAFORM BASIC STEPS TO CREATE EC2 INSTANCE 
------------------------------------------------------------------------------
Compatibility
This is the >=terraform-0.12 branch. 
For compatibility with older versions, use the terraform-0.11 branch.
------------------------------------------------------------------------------
STEP 1 : Very Fist Command we need to Initialize the terraform
          >>terraform init
 ====================================================================================================         
          Initializing the backend...
          
          Initializing provider plugins...
          
          The following providers do not have any version constraints in configuration,
          so the latest version was installed.
          
          To prevent automatic upgrades to new major versions that may contain breaking
          changes, it is recommended to add version = "..." constraints to the
          corresponding provider blocks in configuration, with the constraint strings
          suggested below.
          
          * provider.aws: version = "~> 2.65"
          
          Terraform has been successfully initialized!
          
          You may now begin working with Terraform. Try running "terraform plan" to see
          any changes that are required for your infrastructure. All Terraform commands
          should now work.
          
          If you ever set or change modules or backend configuration for Terraform,
          rerun this command to reinitialize your working directory. If you forget, other
          commands will detect it and remind you to do so if necessary.
====================================================================================================
STEP 2 : terraform apply

        An execution plan has been generated and is shown below.
        Resource actions are indicated with the following symbols:
          + create
        
        Terraform will perform the following actions:
        
          # aws_instance.example will be created
          + resource "aws_instance" "example" {
              + ami                          = "ami-04533969992547875"
              + arn                          = (known after apply)
              + associate_public_ip_address  = (known after apply)
              + availability_zone            = (known after apply)
              + cpu_core_count               = (known after apply)
              + cpu_threads_per_core         = (known after apply)
              + get_password_data            = false
              + host_id                      = (known after apply)
              + id                           = (known after apply)
              + instance_state               = (known after apply)
              + instance_type                = "t2.micro"
              + ipv6_address_count           = (known after apply)
              + ipv6_addresses               = (known after apply)
              + key_name                     = (known after apply)
              + network_interface_id         = (known after apply)
              + outpost_arn                  = (known after apply)
              + password_data                = (known after apply)
              + placement_group              = (known after apply)
              + primary_network_interface_id = (known after apply)
              + private_dns                  = (known after apply)
              + private_ip                   = (known after apply)
              + public_dns                   = (known after apply)
              + public_ip                    = (known after apply)
              + security_groups              = (known after apply)
              + source_dest_check            = true
              + subnet_id                    = (known after apply)
              + tenancy                      = (known after apply)
              + volume_tags                  = (known after apply)
              + vpc_security_group_ids       = (known after apply)
        
              + ebs_block_device {
                  + delete_on_termination = (known after apply)
                  + device_name           = (known after apply)
                  + encrypted             = (known after apply)
                  + iops                  = (known after apply)
                  + kms_key_id            = (known after apply)
                  + snapshot_id           = (known after apply)
                  + volume_id             = (known after apply)
                  + volume_size           = (known after apply)
                  + volume_type           = (known after apply)
                }
        
              + ephemeral_block_device {
                  + device_name  = (known after apply)
                  + no_device    = (known after apply)
                  + virtual_name = (known after apply)
                }
        
              + metadata_options {
                  + http_endpoint               = (known after apply)
                  + http_put_response_hop_limit = (known after apply)
                  + http_tokens                 = (known after apply)
                }
        
              + network_interface {
                  + delete_on_termination = (known after apply)
                  + device_index          = (known after apply)
                  + network_interface_id  = (known after apply)
                }
        
              + root_block_device {
                  + delete_on_termination = (known after apply)
                  + device_name           = (known after apply)
                  + encrypted             = (known after apply)
                  + iops                  = (known after apply)
                  + kms_key_id            = (known after apply)
                  + volume_id             = (known after apply)
                  + volume_size           = (known after apply)
                  + volume_type           = (known after apply)
                }
            }
        
        Plan: 1 to add, 0 to change, 0 to destroy.
        
        Do you want to perform these actions?
          Terraform will perform the actions described above.
          Only 'yes' will be accepted to approve.
        
          Enter a value: yes
        
        aws_instance.example: Creating...
        aws_instance.example: Still creating... [10s elapsed]
        aws_instance.example: Still creating... [20s elapsed]
        aws_instance.example: Creation complete after 28s [id=i-0e6eef7c06670d8a4]
        
        Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
        
STEP 3 : terraform plan -out output.terraform

Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
      + ami                          = "ami-04533969992547875"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t2.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + network_interface_id         = (known after apply)
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tenancy                      = (known after apply)
      + volume_tags                  = (known after apply)
      + vpc_security_group_ids       = (known after apply)

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

This plan was saved to: output.terraform

To perform exactly these actions, run the following command to apply:
    terraform apply "output.terraform"        
        