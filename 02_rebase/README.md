# Lesson 2: How to use the rebase command.

## Introduction

Rebasing is a process for reapplying commits onto a specific branch. it is used to apply a series of commits from another branch as single final commit. It is an alternative to the Git merge command. It is a Linear process merge.

In git,the term Rebase refers to the process of moving or combining a series commits into a new base commit. Rebasing is very beneficial and it visualizes the process in the context of a feature branching workflow.

You should review your branch before rebase it.

## Use rebase command

When you make some commits on a feature branch and some on the main branch. You can rebase any of these branches. Use the git log command to track changes(commit history). Check the desired branch that you want to rebase.
Now execute the rebase command as follows:

Syntax:
- git rebase <name branch>

If there are any conflict in the branch, resolve them and execute the commands below to continue with the changes:
- git status
It is used to check the status
- git rebase --continue
The above command is used to continue with the changes you have made. If you want to skip the changes, you can do so as follows:
- git rebase --skip
When you have finished the recovery, push the repository to the origin. Refer to the example below to understand the git merge command.

## Rebase branch

If we have multiple commits from different branches and want to merge them into one. 
To do this, we have two options: We can either merge or rebase it.
From the example above, we have committed on the main branch and want to rebase it onto the test2 branch.
See the commands below:
    - git checkout test2
This command will switch you to the test2 branch from the main branch.


Output:

Switched to branch "test2"

Now you are on the test2 branch.
Therefore, you can rebase the test2 branch onto the main branch.

See the command below:
    - git rebase master
This command will rebase the test2 branch and will display as applying new commit on the test2 branch.

## Git Interactive Rebase

Git facilitates with Interactive Rebase. It is a powerful tool that allows for various operations such as editing, rewriting, rearranging, etc. on the current commit. Therefore, set the HEAD branch in your local repository in the sidebar. 

Interactive rebase in Git can be invoked with the rebase command, simply enter -i along with the rebase command.

Syntax
    - git rebase -i
It will list all available interactive options.

The options it contains are listed below:
- Selected (-p) Pick:
    Pick means the commit will be included. The order of the commits depends on the order of the pick commands during the rebase process. If you don't want to include the commit, you must delete the entire line.
- Reword (-r):
    The command is quite similar to the pick command. The keyword option pauses the rebase process and allows the opportunity to change the commit message. It does not affect any changes made by the commit.
- Edit (-e):
    The edit option allows for modifying the commit. The means of modification, commits can be added or completely changed. We can also make additional commits before the rebase command continues. It allows us to split a large commit into smaller commits. We can remove incorrect changes made in a commit.
- Squash (-s):
    Squash option allows you to combine two or more commits into a single commit. It also allows us to write a new commit message to describe the changes.
- Fixup (-f):
    It quite similar Squash command. It has removed the message of the merged commit. The older message commit is used to describe both changes.
- Exec (-x):
    The exec option allows you to run arbitrary shell commands with a commit.
- Break (-b):
    The break option stops the rebase at the specified point. It will continue the rebase afterward with the command git rebase --continue.
- Drop (-d):
    The drop option is used to delete a commit.
- Label (-l):
    The label option is used to mark the current head position with a name.
- Reset (-t):
    The reset option is used to reset to a specific label.

