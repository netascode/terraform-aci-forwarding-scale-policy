resource "aci_rest" "topoctrlFwdScaleProfilePol" {
  dn         = "uni/infra/fwdscalepol-${var.name}"
  class_name = "topoctrlFwdScaleProfilePol"
  content = {
    name     = var.name
    profType = var.profile
  }
}
