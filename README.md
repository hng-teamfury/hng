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

## Working Locally with Git

### Get Git

- [Install Git](https://git-scm.com/downloads) for your device

### Change to workspace directory

```bash
cd ~/source/repos/hng/
```

> The symbol `~` is an alias for your `home folder`
> It is `$home` in Pwoershell and `C:\Users\username\` on Windows

### Create folder for new project

```bash
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
```

### Open folder for editing in VSCode

```bash
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

## Working Remotely with Git

### Add a remote repo

- Signup to [Github](http://github.com/)
- Create new repo, I'll use`task-one`
- Click _Clone or Download_ and copy `ssh` or `https` link
- Continue in `Git Bash` below

```bash
git remote add origin git@github.com:piouson/task-one.git
```

### Confirm remote repo added

```bash
git remote -v
```

### Push [saved local Git changes](#save-changes-to-git-locally) to remote repo

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

## Author

[piouson.github.io](https://piouson.github.io/)
