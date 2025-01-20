module "new_role_no_perm" {
  source = "../../"

  role_name                             = "test"
  role_description                      = "this is a test role"
  instance_profile                      = true
  tags                                  = {}
}
