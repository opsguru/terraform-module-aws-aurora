variable "engine" {
     description  =    "The name of the database engine to be used for this DB cluster. Defaults to aurora."
     default      =    ""

}
variable "cluster_identifier" {
     description  =    "The cluster identifier. If omitted, Terraform will assign a random, unique identifier."
     default      =    ""

}

variable "database_name" {
     description  =    "Name for an automatically created database on cluster creation. There are different naming restrictions per database engine"
     default      =    ""

}
variable "master_username" {
     description  =    " Username for the master DB user"
     default      =    ""

}
variable "master_password" {
     description  =    "Password for the master DB user"
     default      =    ""

}
variable "final_snapshot_identifier" {
     description  =    "The name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made."
     default      =    ""

}
variable "availability_zones" {
     type = "list"
     description  =    "A list of EC2 Availability Zones that instances in the DB cluster can be created in"
     default      =    []

}
variable "port" {
     description  =    "The port on which the DB accepts connections"
     default      =    ""

}
variable "vpc_security_group_ids" {
     type         =   "list"
     description  =    " List of VPC security groups to associate with the Cluster"
     default      =    []

}
variable "apply_immediately" {
     description  =    "pecifies whether any cluster modifications are applied immediately, or during the next maintenance window"
     default      =    ""

}
variable "db_cluster_parameter_group_name" {
     description  =    ""
     default      =    ""

}
variable "db_subnet_group_name" {
     description  =    ""
     default      =    ""

}

variable "count" {

     description  =    "node of instaenc"
     default      =    ""

}
variable "identifier" {

     description = "The indentifier for the RDS instance, if omitted, Terraform will assign a random, unique identifier"
     default = ""
}
variable "instance_class" {

     description = "Aurora currently supports the below instance classes."
     default = ""
}
variable "publicly_accessible" {

     description  =    "Bool to control if instance is publicly accessible. Default false"
     default      =    ""

}


variable "db_parameter_group_name" {

     description = "The name of the DB parameter group to associate with this instance."
     default = ""

}
variable "subnets" {
     type = "list"
     description = " A list of VPC subnet ID"
     default = []

}
variable "promotion_tier" {

     description = "efault 0. Failover Priority setting on instance level. The reader who has lower tier defuhas higher priority to get promoter to writer"
     default = ""
}

