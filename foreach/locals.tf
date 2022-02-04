locals {
  files                  = ["ips.json", "report.csv", "sitemap.xml"]
  file_extensions        = [for file in local.files : regex("\\.[0-9a-z]+$", file)]
  filex_extensions_upper = { for ex in local.file_extensions : ex => upper(ex) if ex != ".json" }

  ips = [
    {
      public : "10.0.0.1"
      private : "192.168.0.2"
    },
    {
      public : "10.0.2.2"
      private : "192.168.1.2"
    }

  ]
}