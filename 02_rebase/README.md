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
    Pick means the commit will be included