# git-hooks

Hooks that can be added to the `.git/hooks` directory for an improved developer
experience.

To add these hooks to your repo, first clone this repo locally, then run
`./install.sh /path/to/your/repo` (or `.\install.ps1 \path\to\your\repo` on
Windows).

Installation happens via hard-link, so any time you run `git pull` in the
cloned hooks repository, all locally cloned projects will be automatically
updated with the latest hooks.

Running the install script will delete any existing hooks in your repo.
