locals {
  tags = {
    owners      = var.owners
    environment = var.environment
    Name        = "${var.name}-${var.environment}"
  }
}
