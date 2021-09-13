# DigitalOcean IaC Recipe

Infrastructure as Code (IaC) recipe for deploying to DigitalOcean using Terraform Cloud and GitHub Actions.

**Requirements:**

- DigitalOcean account
- GitHub account
- Terraform Cloud account
    - Workspace with API-driven workflow

## Usage

Fork this repository and configure your repo (see [configuration section](#configuration)).

The [Release Workflow](./.github/workflows/release.yaml) will deploy a single placeholder droplet.

Please remember to update the [LICENSE](./LICENSE) to fit your project's requirement.

### Configuration

The following inputs are expected to be in GitHub Secrets, and will be passed to Terraform via GitHub Actions:

| Name                         | Description                                                       |
| ---------------------------- | ----------------------------------------------------------------- |
| DIGITALOCEAN_TOKEN           | The Digital Ocean API token of the release operator.              |
| TERRAFORM_CLOUD_ORGANIZATION | The name of the organization of the workspace in Terraform Cloud. |
| TERRAFORM_CLOUD_TOKEN        | The Terraform Cloud API token of the release operator.            |
| TERRAFORM_CLOUD_WORKSPACE    | The name of the workspace in Terraform Cloud.                     |

## Contributing

This recipe follows the [GitHub Flow][github-flow-guide] workflow, and releases to the **production** environment.

[github-flow-guide]: https://guides.github.com/introduction/flow/
