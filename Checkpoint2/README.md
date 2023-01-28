# Checkpoint2 Submission

- **COURSE INFORMATION: CSN400**
- **STUDENT’S NAME: RASHEDUL ANWAR**
- **STUDENT'S NUMBER: 146361209**
- **GITHUB USER ID: 146361209-myseneca**
- **TEACHER’S NAME: Atoosa Nasiri**

## Table of Contents
1. [Part A - Adding Files - Local Repo Workflow](#Adding-Files-Local-Repo-Workflow)
2. [Part B - Inspecting Local Repo with `git status` and `git log`](#inspecting-local-repo-with-git-status-and-git)
3. [Part C - Creating & Merging Branches](#creating-and-merging-branches)
4. [Part D - Git Branching Strategy Review Question](#git-branching-strategy-review-questions)

### PART A - Adding Files - Local Repo Workflow:
1. Create *Checkpoint2* Directory in CSN400-Capstone Repo
2. create these *git_status_untracked.txt*(For untracked files) *git_status_uncommitted.tx*(For-files-to be committed) and *git_status_committed.txt*(For committed file) text files with *git status* output
3. Push your changes to remote 

### PART B - Inspecting Local Repo with *git status* and *git log*:
#### The command *(git status)* is used to check the current status of the local repository that includes current branch you are on, any untracked files and the changes. Example :-
``` 
$ git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
 ```
 #### On the other hand, the command *(git log)* displays the commit history of local repository. For Example:- 
 ```
$ git log
commit d8f9a088dcdd82b629c1c95d27aee8b42b2c6ce4 (HEAD -> main, origin/main, origin/HEAD)
Author: ranwar8 <ranwar8@myseneca.ca>
Date:   Fri Jan 27 18:25:29 2023 -0500

    3rd commit

commit f17cd95bf1321a1a7fc8cb08312019a52e90a3b1
Author: ranwar8 <ranwar8@myseneca.ca>
Date:   Fri Jan 27 18:07:38 2023 -0500

    add README.md file
 ```

 ### PART C - Creating & Merging Branches: 
 #### Here below  *`git log -n 5`* command output:-
  ```
$ git log -n 5 
commit 40cde1f6bf90e01650a6dc4aa19cb560b76637e9 (HEAD -> main)
Merge: ce4fcf4 1ae5ee1
Author: ranwar8 <ranwar8@myseneca.ca>
Date:   Fri Jan 27 17:35:14 2023 -0500

    Merge branch 'feat-emojis'

commit 1ae5ee162964a9810ce2b4603eba3f5d8e820e31 (origin/feat-emojis, feat-emojis)
Author: ranwar8 <ranwar8@myseneca.ca>
Date:   Fri Jan 27 17:32:43 2023 -0500

    adds emojis to feat-emojis branch

commit ce4fcf43227db1e97a9ff9db99d1e450c2157d1a (origin/main, origin/HEAD)
Author: ranwar8 <ranwar8@myseneca.ca>
Date:   Fri Jan 27 17:24:14 2023 -0500

    adds footnotes folder
  ```
  ### PART D - Git Branching Strategy Review Question:
  1. From my own point of view, *main/master* branch is the root of all branch and it contains the source code and this branch is protected and **pull request** is used for any changes in this branch. On the other hand, develop branch is considered as secondary branch of *master* branch and the develop branch may have code that's still in testing or development.
  2. Three supporting branches are `*Feature Branches*`, `*Hotfix Branches*` and `*Release Branches*` :<br/>
  <u>**Feature Branches:**</u> These branches are used to categorize newly developed features or modifications.They are predominantly categorised from the develop branch, and once the feature is accomplished, they are merged back into the develop branch.<br/><br/>
  <u>**Hotfix Branches:**</u> These branches are used to resolve complex bugs in the code that is implemented in production. Usually, they are originated from the master branch.<br/><br/>
  <u>**Release Branches:**</u> In order to be ready for a new release, these branches are used. The modifications that will be incorporated into the release Branch, are tested, validated, and documented  which are often formed from the develop branch.
