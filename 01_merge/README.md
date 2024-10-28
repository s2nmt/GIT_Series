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
**Note** It just import the newfile in newbranch. if in the one file have 