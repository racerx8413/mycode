terraform {
  cloud {
    organization = "example-org-cab997"

    workspaces {
      name = "my-example"
    }
  }
}
