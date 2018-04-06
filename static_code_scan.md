# Static Code Scan Instructions

Questions and help reach out to Joe Castle (<joseph.castle@gsa.gov>).  For text changes, please submit a PR.

---

## Two Paths to scanning code for making it open source

### Option #1: Default to Open

This option is for project teams that already have open source code and are looking to create a development pipeline for continually updating code upon commit/PR to repo.  This is also the "free" option.

1. Review the GSA Open Source Policy [repo](https://github.com/GSA/open-source-policy).
2. Read the [open source checklist](https://github.com/GSA/open-source-policy/blob/master/open_source_checklist.md) (even if you don't plan to open source, it has a lot of good considerations with code development).
3. Read [CSS_to_OSS](https://github.com/GSA/open-source-policy/blob/master/CSS_to_OSS.md) on going from closed source to open source.
4. Create a public repository on GitHub in the GSA [organization](https://github.com/GSA).  Make sure to follow GSA's GitHub use [instructions](https://github.com/GSA/GitHub-Administration).
5. Scan code in repository or on local machine with post-commit  [Clouseau](https://github.com/cfpb/clouseau).
6. [Lock](https://help.github.com/articles/configuring-protected-branches/) master branch for monitored PR inclusion.
7. Link your GitHub account to [CircleCI](https://circleci.com/). Setup linters, proofers, and tests as needed for your project/code.  This can be done in settings on the repo or in the .circlci/config.yml file. Build out your development workflow. Refer to CircleCI [documentation](https://circleci.com/docs/) for further details.
8. Link your GitHub repository to [Code Climate](https://codeclimate.com/).  Setup tests as needed.  Refer to CodeClimate [documentation](https://docs.codeclimate.com/) as needed.
9. Setup [integrations](https://gsa-tts.slack.com/apps) for communications between Slack, GitHub, and CircleCI allowing for notification of changes from commits, PRs, to full build status.

### Option #2: Closed source software to open source

This option is for project teams that have closed source code and want to scan in a development pipeline potentially to open source.  This option mimics #1 but costs money. It is the most viable option to scan code, clean, and make public.  Then you can go to Option #1, the free option above.

1. Review the GSA Open Source Policy [repo](https://github.com/GSA/open-source-policy).
2. Read the [open source checklist](https://github.com/GSA/open-source-policy/blob/master/open_source_checklist.md) (even if you don't plan to open source, it has a lot of good considerations with code development).
3. Read [CSS_to_OSS](https://github.com/GSA/open-source-policy/blob/master/CSS_to_OSS.md) on going from closed source to open source.
4. Setup a private repository on GitHub in the GSA [organization](https://github.com/GSA).  Keep in mind that these cost money to GSA and you may have to buy one or more as needed.  Coordinate your efforts with Mike Tanski (mike.tanski@gsa.gov) of GSA IT's Corporate IT Systems.
5. Notify Joe Castle (joseph.castle@gsa.gov>) that you want to use Checkmarx for static code scanning so you can pass him repo information with token to setup a secure connection to the AWS server with Cx, configure Cx, and get regular reports on commit/PR.
6. Scan code in repository or on local machine with post-commit  [Clouseau](https://github.com/cfpb/clouseau).
7. [Lock](https://help.github.com/articles/configuring-protected-branches/) master branch for monitored PR inclusion.
8. Link your GitHub account to [CircleCI](https://circleci.com/). Setup linters, proofers, and tests as needed for your project/code.  This can be done in settings on the repo or in the .circlci/config.yml file. Build out your development workflow. Refer to CircleCI [documentation](https://circleci.com/docs/) for further details.
9. **TBD...**
    - Configure CircleCI with Cx CLI tool
10. Setup [integrations](https://gsa-tts.slack.com/apps) for communications between Slack, GitHub, and CircleCI allowing for notification of changes from commits, PRs, to full build status.
