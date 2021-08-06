output "dn" {
  value       = aci_rest.topoctrlFwdScaleProfilePol.id
  description = "Distinguished name of `topoctrlFwdScaleProfilePol` object."
}

output "name" {
  value       = aci_rest.topoctrlFwdScaleProfilePol.content.name
  description = "Forwarding scale policy name."
}
