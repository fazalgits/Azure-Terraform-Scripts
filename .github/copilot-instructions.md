# GitHub Copilot Instructions for Azure-Terraform-Scripts

This repository currently contains a minimal Terraform-based Azure script:
- `main.tf` — the single Terraform entrypoint
- `README.md` — currently empty
- `.gitignore` — currently empty

## What matters here
- Keep the project small and explicit. There is no existing multi-module architecture or test framework.
- If you add Terraform files, use standard names like `providers.tf`, `variables.tf`, `outputs.tf`, and keep `main.tf` as the root module entrypoint.
- Prefer Terraform-native Azure resources and provider configuration rather than introducing custom wrapper scripts.

## Useful local workflows
- `terraform init` to initialize the working directory
- `terraform validate` to check syntax and configuration
- `terraform plan` to review changes before applying
- `terraform apply` to deploy changes

## Expected patterns
- Azure provider configuration belongs in Terraform provider blocks, usually in `main.tf` or `providers.tf`
- Resource definitions should be explicit and minimal in this repo; avoid creating large, unnecessary abstractions when the repo is currently empty
- Document changes in `README.md` if you add new resources, inputs, or usage instructions

## What not to assume
- There is no existing CI/CD or GitHub Actions configuration
- There are no test files, modules, or variable conventions already defined
- Do not assume state backend configuration exists unless you add it explicitly

## When updating this repo
- Preserve the existing minimal structure unless the task explicitly calls for project expansion
- Keep new code focused on the requested Azure Terraform outcome
- If you introduce a new file, make sure it supports a clear Terraform purpose: provider setup, variables, outputs, or documentation

## Ask for clarification if needed
- If the task suggests adding Azure infrastructure, confirm whether to use local Terraform state or a remote backend
- If the task involves repository structure changes, verify whether the user wants single-file simplicity or a multi-file Terraform layout
