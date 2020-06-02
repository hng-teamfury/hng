# How to Git Bash

## TL-DR

<details>

<summary>Click to expand</summary>

```bash
cd ~/source/repos/hng/
mkdir task-one
cd task-one
git init
touch README.md
code .
git add README.md
git commit -m "Document changes in readme"
git remote add origin git@github.com:piouson/task-one.git
git remote -v
git config --global credential.helper wincred
git push origin master
```

</details>

## Setup

<details>

<summary>Click to expand</summary>

### Get the tools

- Signup to [Github](http://github.com/)
- Install [Visual Studio Code](https://code.visualstudio.com/download) for your device
- Install [Git](https://git-scm.com/downloads) for your device

### Confirm Git is installed

- Open `Terminal` or `Git Bash` on Windows and run command

```bash
git --version
```

</details>

## Starting From Remote Repo

<details>

<summary>Click to expand</summary>

### Copy remote repository link

- Find an existing repo on Github
- Click _Clone or Download_ and copy the `ssh` or `https` link

### Change to workspace directory

```bash
cd ~/source/repos/
```

### Clone repo

```bash
# https link
git clone https://github.com/username/repo-name.git
```

### Change to cloned repo directory

```bash
cd repo-name
```

### Create new branch for development

```bash
git checkout -b branch-name
```

### Open folder for editing in VSCode

```bash
code .
```

### Save changes to local git

```bash
git status
git add .
git commit -m "enter commit message here"
```

### Push saved changes to remote git

```bash
git push origin branch-name
git log --oneline --graph
```

Now head to Github to create a [Pull Request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests)

</details>

## Starting From Local Repo

<details>

<summary>Click to expand</summary>

### Create folder for new project

```bash
cd ~/source/repos/
mkdir task-one
```

### Change to project folder

```bash
cd task-one
```

### Make the folder a local git repository

```bash
git init
```

### Optionally create a file

```bash
touch README.md
code .
```

### Add edited file to git for tracking

```bash
git status
git add README.md
```

### Save changes to git locally

```bash
git commit -m "Document changes in readme"
```

> That's the basics covered for working locally with Git.

### Add a remote repo

- Signup to [Github](http://github.com/)
- Create new repo, I'll use `task-one`
- Click _Clone or Download_ and copy `ssh` or `https` link
- Continue in `Git Bash` below

```bash
git remote add origin git@github.com:username/task-one.git
```

### Confirm remote repo added

```bash
git remote -v
```

### Push [saved changes](#save-changes-to-git-locally) to remote repo

```bash
git push origin master
git log --oneline --graph
```

### Configure Github credential to avoid password prompt

```bash
git config --global credential.helper store
# or for Windows use
git config --global credential.helper wincred
```

For a more secure option using `ssh`, see [Github Help](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)

</details>

## Author

[piouson.github.io](https://piouson.github.io/)
