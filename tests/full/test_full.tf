terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  name    = "HIGH-DUAL-STACK"
  profile = "high-dual-stack"
}

data "aci_rest" "topoctrlFwdScaleProfilePol" {
  dn = "uni/infra/fwdscalepol-${module.main.name}"

  depends_on = [module.main]
}

resource "test_assertions" "topoctrlFwdScaleProfilePol" {
  component = "topoctrlFwdScaleProfilePol"

  equal "name" {
    description = "name"
    got         = data.aci_rest.topoctrlFwdScaleProfilePol.content.name
    want        = module.main.name
  }

  equal "profType" {
    description = "profType"
    got         = data.aci_rest.topoctrlFwdScaleProfilePol.content.profType
    want        = "high-dual-stack"
  }
}