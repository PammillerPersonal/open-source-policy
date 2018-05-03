# Checkmarx Proof of Concept

This proof of concept was initiated in the GSA CTO office to facilitate implementation of the Federal Source Code Policy, M-16-21, with the intention of open sourcing more GSA IT code. The goal was to stand up a code development pipeline similar to our open source pipeline for scanning close source code to make open source.

Instructions for setting up a development pipeline (either open or closed) can be found at [static_code_scan.md](https://github.com/GSA/open-source-policy/blob/master/static_code_scan.md) within this repo.

---

## Open Source Development Pipeline

![Open Source Development Pipeline](https://github.com/GSA/open-source-policy/blob/master/img/oss_path.png "Open Source Development Pipeline")

The following is a high-level description of the diagram/architecture.  [Christopher](https://github.com/GSA/christopher) is a working version and GSA employees can look under the hood for a closer look of what's happening.

- Client - The client is the developer's computer. It consists of an IDE, CLI, Git, and browser for pushing code and monitoring it on GitHub and interacting with CircleCI, CodeClimate, and receives Slack notifications of builds. A local install of [Clouseau](https://github.com/cfpb/clouseau) is helpful for scanning code locally for sensitive content.
- [GitHub](https://github.com/gsa) - GSA has an organization on GitHub.com and open/closed repositories for code versioning. It is the root for the development pipeline with branch rules and integration to CircleCI and CodeClimate. It also provides notification via Slack back to the client.
- [CircleCI](https://circleci.com/) - Continuous integration allows for builds and tests launched at the code commit and PR. It provides for automated testing, prevention of merging code based on pre-defined testing rules, provides status to Slack. Authenitication is tied to GitHub.
- [CodeClimate](https://codeclimate.com/) - This is one open source code scanning tool and has built-in testing tools. It integrates with GitHub and provides notification to GitHub. It too can stop merging of code based on automated test failure. Authenitication is tied to GitHub.
- [Slack](https://slack.com/) - This provides for integration to the other tools and communication to the client on code merge and build progress.

Legend(ish) - "....." lines account for CLI or browser from client to application directly for config; "_____" lines account for code transfer and communication between client and applications as well applications and applications.

---

## Close Source Development Pipeline with Checkmarx (Cx)

![Close Source Development Pipeline](https://github.com/GSA/open-source-policy/blob/master/img/css_path.png "Close Source Development Pipeline")

The following is a high-level description of the diagram/architecture. [Brian](https://github.com/GSA/brian) is a working version and GSA employees with proper access (e.g., request access to the private repo) can look under the hood for a closer look of what's happening.

- Client - The client is the developer's computer. It consists of an IDE, CLI, Git, and browser for pushing code and monitoring it on GitHub and interacting with CircleCI, Checkmarx, and receives Slack notifications of builds. A local install of [Clouseau](https://github.com/cfpb/clouseau) is helpful for scanning code locally for sensitive content.
  - Cx particular - [Microsoft Remote Desktop](https://www.microsoft.com/en-us/store/p/microsoft-remote-desktop/9wzdncrfj3ps) will be needed to communicate with AWS EC2 Microsoft Windows 2016 server. Cx only runs on Windows.
  - Cx particular - CLI will be needed for using Linux as a jump box to run Cx CLI tests (see more below in AWS section).
  - Mac particular - [Microsoft Remote Desktop](https://itunes.apple.com/us/app/microsoft-remote-desktop-8-0/id715768417?mt=12) for Mac
- [GitHub](https://github.com/gsa) - GSA has an organization on GitHub.com and closed repositories for close source code versioning. It is the root for the development pipeline with branch rules and integration to CircleCI. It also provides notification via Slack back to the client.
- [CircleCI](https://circleci.com/) - tbd
- GSA [AWS](https://aws.amazon.com/) - AWS is used for placing Cx server in the cloud. A Microsoft Windows 2016 server base will work for the AMI. Cx has specific specs on size and performance. It is wise to setup a micro Linux machine for testing CLI commands as needed. Ultimately, look at the [Cx documentation](https://www.checkmarx.com/documentation/).
  - Cx particular - Cx only runs on Microsoft Windows and SQL Server.
  - Cx particular - Auto code scanning occurs between Cx and CircleCI through Linux CLI calls. To test the commands, first you can work them on the Windows machine in PowerShell then try from outside the environment from a Linux server. Specifics will be in [static_code_scan.md](https://github.com/GSA/open-source-policy/blob/master/static_code_scan.md) within this repo.
- [Checkmarx](https://www.checkmarx.com/) - Cx is a static code scanning application allowing for identification, tracking, and repairing technical and logical flaws in source code and vulnerabilities. It supports many software languages and has integrations into multiple CI tools, IDEs, and can be used through the CLI. It also provides support for scanning open source 3rd party libraries within the code base.

Legend(ish) - "....." lines account for CLI or browser from client to application directly for config; "_____" lines account for code transfer and communication between client and applications as well applications and applications.