# Checkmarx Proof of Concept

This proof of concept was initiated in the GSA CTO office to facilitate implementation of the Federal Source Code Policy, M-16-21.  The intent was to stand up a code development pipeline using a coding platform for version control, continuous integration for build checking and merging, static code analysis to code scanning, and communications of status back to the developer.

The tool pipeline included: GitHub --> CircleCI --> Checkmarx SAST & OSA --> Slack.

---

## Open Source Development Pipeline

![Open Source Development Pipeline](https://github.com/GSA/open-source-policy/blob/master/img/oss_path.png "Open Source Development Pipeline")

Here is a short description of what is happening in the diagram.  [Christopher](https://github.com/GSA/christopher) is a working version.

1. Client - the client is the developers computer. It consists of an IDE, client, and browser for pushing code to GitHub and interacting with CircleCI, CodeClimate, and receives Slack notifications of builds.
2. GitHub - ...