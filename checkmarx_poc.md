# Checkmarx Proof of Concept
Engineered and written by [Joe Castle](https://github.com/jcastle)

This proof of concept was initiated in the GSA CTO office to facilitate implementation of the Federal Source Code Policy, M-16-21, with the intention of open sourcing more GSA IT code. The goal was to stand up a code development pipeline similar to our open source pipeline for scanning close source code to make open source.

Instructions for setting up a development pipeline (either open or closed) can be found at [static_code_scan.md](https://github.com/GSA/open-source-policy/blob/master/static_code_scan.md) within this repo.

---

## Open Source Development Pipeline

![Open Source Development Pipeline](https://github.com/GSA/open-source-policy/blob/master/img/oss_path.png "Open Source Development Pipeline")

Here is a short description of what is happening in the diagram.  [Christopher](https://github.com/GSA/christopher) is a working version and GSA employees can look under the hood for a closer look of what's happening.

- Client - The client is the developer's computer. It consists of an IDE, CLI, and browser for pushing code to GitHub and interacting with CircleCI, CodeClimate, and receives Slack notifications of builds. A local install of [Clouseau](https://github.com/cfpb/clouseau) is helpful for scanning code locally for sensitive content.
- [GitHub](https://github.com/gsa) - GSA has an organization on GitHub.com and open/closed repositories for code versioning. It is the root fo the development pipeline branch rules and integration to CircleCI and CodeClimate. It also provides notification via Slack back to the client.
- [CircleCI](https://circleci.com/) - Continuous integration allows for builds and tests launched at the code commit and PR. It provides for automated testing, prevention of merging code based on pre-defined testing rules, provides status to Slack. Authenitication is tied to GitHub.
- [CodeClimate](https://codeclimate.com/) - This is one open source code scanning tool and has built-in testing tools. It integrates with GitHub and provides notification to GitHub. It too can stop merging of code based on automated test failure. Authenitication is tied to GitHub.
- [Slack](https://slack.com/) - This provides for integration to the other tools and communication to the client on code merge and build progress.

Legend(ish) - "....." lines account for CLI or browser from client to application directly for config; "_____" lines account for code transfer and communication between client and applications as well applications and applications.

---

## Close Source Development Pipeline with Checkmarx

![Close Source Development Pipeline](https://github.com/GSA/open-source-policy/blob/master/img/css_path.png "Close Source Development Pipeline")
