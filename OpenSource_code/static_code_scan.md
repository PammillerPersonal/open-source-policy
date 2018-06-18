# Static Code Scan Instructions

Questions and help reach out to the GSA's CTO office (cto@gsa.gov).  For text changes, please submit a PR.

---

## Two Paths to scanning code for making it open source

### Option #1: Default to Open

This option is for project teams that already have open source code and are looking to create a development pipeline for continually updating code upon commit/PR to repo.  This is also the "free" option.

1. Review the GSA Open Source Policy [repo](https://github.com/GSA/open-source-policy).
2. Read the [open source checklist](https://github.com/GSA/open-source-policy/blob/master/OpenSource_code/open_source_checklist.md) (even if you don't plan to open source, it has a lot of good considerations for code development).
3. Create a public repository on GitHub in the GSA [organization](https://github.com/GSA).  Make sure to follow GSA's GitHub use [instructions](https://github.com/GSA/GitHub-Administration).
4. Scan code in repository or on local machine with pre-commit  [Clouseau](https://github.com/cfpb/clouseau).
5. [Lock](https://help.github.com/articles/configuring-protected-branches/) master branch for monitored PR inclusion.
6. Link your GitHub account to [CircleCI](https://circleci.com/). Setup linters, proofers, and tests as needed for your project/code.  This can be done in settings on the repo or in the .circlci/config.yml file. Build out your development workflow. Refer to CircleCI [documentation](https://circleci.com/docs/) for further details.
7. Link your GitHub repository to [Code Climate](https://codeclimate.com/).  Setup tests as needed.  Refer to CodeClimate [documentation](https://docs.codeclimate.com/) as needed.
8. Setup [integrations](https://gsa-tts.slack.com/apps) for communications between Slack, GitHub, and CircleCI allowing for notification of changes from commits, PRs, to full build status.

### Option #2: Closed source software to open source

This option is for project teams that have closed source code and want to scan in a development pipeline potentially to open source.  This option mimics #1 but costs money. It is the most viable option to scan code, clean, and make public.  Then you can go to Option #1, the free option above.

1. Review the GSA Open Source Policy [repo](https://github.com/GSA/open-source-policy).
2. Read the [open source checklist](https://github.com/GSA/open-source-policy/blob/master/open_source_checklist.md) (even if you don't plan to open source, it has a lot of good considerations for code development).
3. Setup a private repository on GitHub in the GSA [organization](https://github.com/GSA).  Keep in mind that these cost money to GSA and you may have to buy one or more as needed.  Coordinate your efforts with Mike Tanski (mike.tanski@gsa.gov) of GSA IT's Corporate IT Systems.
4. Notify the GSA CTO's office (cto@gsa.gov) that you want to use Checkmarx for static code scanning so you can pass him repo information with token to setup a secure connection to the AWS server with Cx, configure Cx, and get regular reports on commit/PR.
5. Scan code in repository or on local machine with pre-commit [Clouseau](https://github.com/cfpb/clouseau).
6. [Lock](https://help.github.com/articles/configuring-protected-branches/) master branch for monitored PR inclusion.
7. Link your GitHub account to [CircleCI](https://circleci.com/). Setup linters, proofers, and tests as needed for your project/code.  This can be done in settings on the repo or in the .circlci/config.yml file. Build out your development workflow. Refer to CircleCI [documentation](https://circleci.com/docs/) for further details.
8. Configure CircleCI after integrating GitHub repo. Through CircleCI repo settings, Cx environment variables and testing commands can be entered.  *See [cx_config](https://github.com/GSA/open-source-policy/blob/master/OpenSource_code/cx_config.md) for specific config instructions.
9. Setup [integrations](https://gsa-tts.slack.com/apps) for communications between Slack, GitHub, and CircleCI allowing for notification of changes from commits, PRs, to full build status.
