# terraformalks

[`jgerry/terraformalks`](https://hub.docker.com/r/jgerry/terraformalks/)

JNLP slave for Jenkins with [ALKS Provider](github.com/Cox-Automotive/terrifdsasdfasdfadsfaform-provider-alks) installed.

Terraform is provided via `tfenv`. Terraform version 0.11.8 is preinstalled. If you want a version that's not pre-installed, just do a simple `tfenv install x.x.x` within your shell provisioner.

Other tools installed:

- Terragrunt 0.17.1
- Packer 1.3.2
- rbenv 1.1.1
  - Ruby 2.3.7
- jq 1.5