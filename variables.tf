variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path" {}
variable "aws_key_name" {}
variable "aws_region" {
  default = "us-west-2"
}
variable "install_docker_services" {
  default = "false"
}

variable "cf1_az" {
    default = {
        us-east-1 = "us-east-1c"
        us-west-1 = "us-west-1c"
        us-west-2 = "us-west-2a"
        ap-northeast-1 = "ap-northeast-1a"
        ap-southeast-1 = "ap-southeast-1a"
        ap-southeast-2 = "ap-southeast-2a"
        eu-central-1 = "eu-central-1a"
        eu-west-1 = "eu-west-1a"
        sa-east-1 = "sa-east-1a"
    }
}

variable "cf2_az" {
    default = {
        us-east-1 = "us-east-1e"
        us-west-1 = "us-west-1b"
        us-west-2 = "us-west-2b"
        ap-northeast-1 = "ap-northeast-1b"
        ap-southeast-1 = "ap-southeast-1b"
        ap-southeast-2 = "ap-southeast-2b"
        eu-central-1 = "eu-central-1b"
        eu-west-1 = "eu-west-1b"
        sa-east-1 = "sa-east-1b"
    }
}

variable "network" {
	default = "10.10"
}

variable "debug" {
  default = "false"
}

variable "cf_admin_pass" {}

variable "cf_domain" {
  default = "XIP"
}

variable "cf_boshworkspace_version" {
  default = "v1.1.12"
}

variable "cf_release_version" {
  default = "210"
}

variable "cf_size" {
  default = "tiny"
}

variable "aws_centos_ami" {
    default = {
        us-east-1 = "ami-00a11e68"
        us-west-1 = "ami-ba3c3bff"
        us-west-2 = "ami-3425be04"
        ap-northeast-1 = "ami-9392dc92"
        ap-southeast-1 = "ami-dcbeed8e"
        ap-southeast-2 = "ami-89e88db3"
        eu-central-1 = "ami-e4d6ecf9"
        eu-west-1 = "ami-af6faad8"
        sa-east-1 = "ami-73ee416e"
    }
}

variable "aws_ubuntu_ami" {
    default = {
        us-east-1 = "ami-98aa1cf0"
        us-west-1 = "ami-736e6536"
        us-west-2 = "ami-37501207"
        ap-northeast-1 = "ami-df4b60de"
        ap-southeast-1 = "ami-2ce7c07e"
        ap-southeast-2 = "ami-1f117325"
        eu-central-1 = "ami-423c0a5f"
        eu-west-1 = "ami-f6b11181"
        sa-east-1 = "ami-71d2676c"
    }
}

# tag values, key order: Project,IAP,Environment
variable "aws_tags" {
  default = "Foo Bar,00000,Development"
}

variable "deployment_size" {
  default = "small"
}

variable backbone_z1_count {
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "2"
    }
}
variable api_z1_count {
    default = {
        small  = "1"
        med    = "2"
        med-ha = "1"
        big-ha = "2"
    }
}
variable services_z1_count {
    default = {
        small  = "1"
        med    = "1"
        med-ha = "1"
        big-ha = "1"
    }
}
variable health_z1_count {
    default = {
        small  = "1"
        med    = "1"
        med-ha = "1"
        big-ha = "1"
    }
}
variable runner_z1_count {
    default = {
        small  = "3"
        med    = "4"
        med-ha = "5"
        big-ha = "6"
    }
}

variable backbone_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable api_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable services_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "2"
    }
}
variable health_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "1"
    }
}
variable runner_z2_count {
    default = {
        small  = "0"
        med    = "0"
        med-ha = "1"
        big-ha = "3"
    }
}

variable "private_cf_domains" {
    default = ""
}

variable additional_cf_sg_allow_1 { default = "" }
variable additional_cf_sg_allow_2 { default = "" }
variable additional_cf_sg_allow_3 { default = "" }
variable additional_cf_sg_allow_4 { default = "" }
variable additional_cf_sg_allow_5 { default = "" }
