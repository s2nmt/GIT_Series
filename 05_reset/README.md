# How to use git reset command

    When you want to pull the latest commit and you have modified files in your local repo that you want to discard, you can clear all local changes and pull the latest commit from repo local using 
the following command.
- git reset --hard HEAD

To clarify, git reset --hard HEAD resets your local files to the state of the last local commit. If you also want to pull the latest commit from Github, use
git fetch --all
git reset --hard origin/<branch-name>
