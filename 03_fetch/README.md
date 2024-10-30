# How to use git fetch

## Introduction
Ferching downloads a branch from another repository, along with all of its associated commits and files. But, it doesn't try to integrate anything into your local repository. This gives you chance to inspect changes before merging them with your project.

## How git fetch works with remote branches
To better understand how git fetch works let us discuss how Git organizes and stores commits. Behind the scenes, in the repository's ./.git/objects directory, Git stores all commits, local and remote. Git keeps remote and local branch commits distinctly separate through the use of branch refs. The refs for local branches are stored in the ./.git/refs/heads/ .Executing the git branch command will output a list of the local branch refs. The following is an example of git branch output with some demo branch names.

    git branch
    main
    feature1
    debug2
Examining the contents of the /.git/refs/heads/ directory would reveal similar output.
    ls ./.git/refs/heads/
    main
    feature1
    debug2

Remote branches are just like local branches, except they map to commits from somebode else's repository. Remote branches are prefixed by the remote they belong to so that you don't mix them up with local branchs. Like local branches, Git also has refs for remote branches. Remote branch refs live in the ./.git/refs/remotes/ directory. The next example code snippet shows the branches you might see after fetching a remote repo conveniently named remote-repo:
git branch -r
    # origin/main
    # origin/feature1
    # origin/debug2
    # remote-repo/main
    # remote-repo/other-feature
This ouput displays the local branches we had previously examined but now displays them prefixed with origin/ . Additionally, we now see the remote branches prefixed with remote-repo:

    git branch -r
    # origin/main
    # origin/feature1
    # origin/debug2
    # remote-repo/main
    # remote-repo/other-feature
This output displays the local branches we had previously examined but now displays them prefixed with origin/. Additionally, we now see the remote