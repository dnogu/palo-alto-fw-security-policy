variable "rules" {
  description = "Rules To Be Applied for Application"
  type = map(object({ app = string
    source = object({
      ip-netmask = list(string)
      fqdn       = list(string)
    })
    destination = object({
      ip-netmask = list(string)
      fqdn       = list(string)
      service    = list(string)
    })
  }))
  nullable = false
  default = {
    samplerule = {
      app = "test"
      source = {
        ip-netmask = ["10.10.10.10/32"]
        fqdn       = []
      }
      destination = {
        ip-netmask = ["10.10.10.10/32"]
        fqdn       = []
        service    = ["tcp/443", "tcp/80"]
      }
    },
  }
}
