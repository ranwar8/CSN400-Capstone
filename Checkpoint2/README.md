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
  
