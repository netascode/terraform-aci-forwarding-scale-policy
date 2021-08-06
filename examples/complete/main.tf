module "aci_forwarding_scale_policy" {
  source = "netascode/forwarding-scale-policy/aci"

  name    = "HIGH-DUAL-STACK"
  profile = "high-dual-stack"
}
