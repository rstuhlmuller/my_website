include "root" {
  path = find_in_parent_folders()
}

include "ui" {
  path = "${dirname(find_in_parent_folders())}/_env/ui.hcl"
}