# Security Policy

## Supported versions

This project does not currently publish versioned releases. Security fixes are applied only to the latest revision of the `main` branch.

| Version | Supported |
| --- | --- |
| Latest `main` branch | :white_check_mark: |
| Older commits and downstream forks | :x: |

## Reporting a vulnerability

Please do not disclose a suspected vulnerability in a public issue, discussion, pull request, or commit.

Report it privately through [GitHub Security Advisories](https://github.com/Nayekah/thesis-paper-typst-itb/security/advisories/new). If private vulnerability reporting is unavailable, open a minimal issue that asks the maintainer for a private contact channel without including exploit details or sensitive information.

Include as much of the following information as possible:

- the affected file, workflow, dependency, or revision;
- the environment and tool versions used;
- a description of the impact and realistic attack scenario;
- minimal reproduction steps or a proof of concept;
- any known workarounds or suggested remediation; and
- whether the issue has been disclosed anywhere else.

Do not include real student records, credentials, access tokens, unpublished thesis material, or other personal data in the report or reproduction files.

Maintainers aim to acknowledge a complete report within seven days. Confirmed issues will be assessed, fixed privately when practical, and disclosed after a remediation is available. Reports that are not considered vulnerabilities will receive an explanation when possible.

## Scope

Examples of issues that are in scope include:

- unsafe behavior in repository scripts or GitHub Actions workflows;
- dependency or supply-chain risks introduced by this repository;
- unintended file access or command execution caused by the template tooling; and
- accidental exposure of sensitive local data during preview, formatting, or export.

The following are generally out of scope:

- spelling, formatting, pagination, or academic-content errors;
- vulnerabilities that exist only in unsupported historical revisions;
- issues in Typst, Tinymist, Typstyle, VS Code, or other upstream tools that are not caused by this repository; and
- reports without a plausible security impact.

Report upstream vulnerabilities directly to the affected upstream project. If an upstream issue requires a defensive change in this repository, include that impact in your private report here.

## Safe harbor

Good-faith research that avoids privacy violations, data destruction, service disruption, and unauthorized access will not be treated as malicious activity by this project. Stop testing and report immediately if you encounter sensitive data.
