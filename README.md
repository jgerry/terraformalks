# terraformalks

[`jgerry/terraformalks`](https://hub.docker.com/r/jgerry/terraformalks/)

JNLP slave for Jenkins with [ALKS Provider](github.com/Cox-Automotive/terraform-provider-alks) installed.

Terraform is provided via `tfenv`. Version 0.11.7 is preinstalled. If you want a version that's not pre-installed, just do a simple `tfenv install x.x.x` within your shell provisioner.

Other infrastructure tools installed: Terragrunt, Packer, rbenv. JQ is also installed because, well, JQ is great.
