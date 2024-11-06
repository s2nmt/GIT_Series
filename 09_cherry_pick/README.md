# Cherry Pick command

## What is cherry pick command?
The git cherry-pick command allows you to select (or "cherry-pick") specific commits from one branch and apply them onto another branch. This is usefull when you want to move changes to a different branch without merging the entire branch.

[refer](https://youtu.be/0lhtSgkK8SA?si=BnN7OqZ_2JW3XYKj)

## Git command
- git cherry-pick id_commit
or
- git cherry-pick id_commit id_commit1 id_commit2 ...


## Advance

when you want to cherry-pick commit without -m such as merge commit.
- git cherry-pick --abort
- git cherry-pick -m 1 --no-commit id_commit_begin^..id_commit_last