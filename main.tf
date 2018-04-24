#####################################################################################
#                               Aws_rds_cluster                                     #
#####################################################################################

resource "aws_rds_cluster" "db_cluster" {
  engine                          = "${var.engine}"
  cluster_identifier              = "${var.cluster_identifier}"
  database_name                   = "${var.database_name}"
  master_username                 = "${var.master_username}"
  master_password                 = "${var.master_password}"
  final_snapshot_identifier       = "${var.final_snapshot_identifier}"
  availability_zones              = ["${var.availability_zones}"]
  port                            = "${var.port}"
  vpc_security_group_ids          = ["${var.vpc_security_group_ids}"]
  apply_immediately               = "${var.apply_immediately}"
  db_cluster_parameter_group_name = "${var.db_cluster_parameter_group_name}"
  db_subnet_group_name            = "${aws_db_subnet_group.db_subnet.id}"

}




#####################################################################################
#                               Aws_rds_cluster_Insteance                           #
#####################################################################################

resource "aws_rds_cluster_instance" "cluster_instances" {
  count                              = "${var.count}"
  identifier                         = "${var.identifier}-${count.index}"
  cluster_identifier                 = "${aws_rds_cluster.db_cluster.id}"
  instance_class                     = "${var.instance_class}"
  publicly_accessible                = "${var.publicly_accessible}"
  db_parameter_group_name            = "${var.db_parameter_group_name}"
  promotion_tier                     = "${var.promotion_tier}"
  auto_minor_version_upgrade         = true
  #preferred_backup_window           = "04:00-09:00"
  #preferred_maintenance_window      = "wed:03:00-wed:03:30"



}

#####################################################################################
#                               aws_db_subnet_group                                 #
#####################################################################################

resource "aws_db_subnet_group" "db_subnet" {
  name       = "db-subnet"
  subnet_ids = ["${var.subnets}"]
}
