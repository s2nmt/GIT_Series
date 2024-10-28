# Lesson 1: How to merge a project between the main branch and other branch

1. Create new branch

- Currently, If you only have a main branch. You should create another branch. Use the command "git checkout -b name_new_branch"

2. Check the current branch

- Use the command "git branch". The screen will display the current branch.

3. Create the new content you want to add

4. Push the current content to Git

- Use the following commands:

    git add .

    git commit -m "content"

    git push --set-upstream origin name_branch
5. You can switch main name_branch
- Use command
    git checkout main
6. Merge new branch into main branch
    git merge new

**Note** Git will then integrate the changes from branch-name into the branch you're currently on.

7. Resolve Conflicts (if any): if changes on both branches modify the same parts of a file, Git may be unable to merge automatically and will mark these as conflicts. You need to resolve these conflicts manually, then complete the merge by staging the changes and committing them.

### Example of a Git Merge Conflict

When mergin branches in Git, you might encouter a merge conflict if changes have been made to the same lines in the same file on diffence branches.

For example, if there's a conflict, you may see something like this:

'''plain text

\<<<<<<< HEAD
Hello from main branch!
\=======
Hello from feature branch!
/>>>>>>> feature

How to Resolve:
- Choosee either Hello from main branch! or Hello from feature branch!, or combine them as you see fit.
- Remove the conflict markers:
    <<< HEAD
    ======
    />>> feature
- After resolving the conflict, save the file, stage (sắp xếp) it using git add, and complete the merge with a git commit.