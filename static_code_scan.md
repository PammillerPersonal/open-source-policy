## Static Code Scan Instructions

*This is a work in progress*

### Two Paths to scanning code for making it open source

#### Option #1: Default to Open
This option is for project teams that already have open source code and are looking to create a development pipeline for continually updating code upon commit/PR to repo.  This is also the "free" option.

1. Create a public repository on GitHub in the GSA organization.  Make sure to follow GSA's GitHub use instructions.
2. Make sure to have a master branch that is locked for PR merges.
3. Link your GitHub account to CircleCI. Setup linters, proofers, and tests as needed for your project/code.  Build out your development workflow.  Refer to CircleCI documentation for further details.
4. Link your GitHub repository to CodeClimate.  Setup tests as needed.  Refer to CodeClimate documentation as needed.


#### Option #2: Closed source software to open source
This option is for project teams that have closed source code and want to scan in a development pipeline potentially to open source.  This option costs money but it's the only viable option to scan code, clean, and make public.  Then you can potentially go to Option #1 or the free option above.

1. Setup a private repository on GitHub.
2. Notify Joe Castle that you want to use Checkmarx for static code scanning so you can pass him repo information, setup a secure connection to the AWS server with Cx, configure Cx, and get regular reports on commit/PR.
