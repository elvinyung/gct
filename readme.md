# gct
### by [Elvin Yung](https://github.com/elvinyung)

Super small Unix utility for committing things with ticket names.

### Introduction
Your team might use JIRA with Github hooks that update issue statuses when it sees commit messages that include names like `PLAT-1337` or `APP-420`.

If you're lazy like me and don't want to add the ticket name to every commit message, this script is for you! It looks for the ticket name in your branch name and prepends it to the commit message.

Kinda hacky, but works.

### Installation
1. Run `install.sh` as root.

### Usage
Include the ticket name somewhere in your branch name. The script should accept the following formats:

* `something/THING-6666...`
* `THING-6666...`
* `THING_6666...`
* lowercase variations of the above

and format the ticket name to `THING-6666`. The commit message will be formatted to `[THING_6666] actual commit message here`.

Commit with `gct [COMMIT_MSG]`.

If you formatted your branch incorrectly, `gct` should still commit with the entire message.
