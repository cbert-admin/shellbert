#Bash Functions

shellrcgrab(){
  cd .shellrc
  git stash --include-untracked
  git pull
  cd ~
  }

lpgrab(){
  cd .shellrc/liquidprompt
  git stash --include-untracked
  git pull
  cd ~
  }

dotgrab(){
  shellrcgrab
  for submodule in "$(cat ~/.shellrc/.gitmodules | grep "path = " | grep -v "path = ")"; do
    cd ~/.shellrc/${submodule}
    git stash --include-untracked
    git pull --quiet
  done
  cd ~
}

updates(){
  sudo apt update && sudo apt upgrade -y
  brew update
  cargo update
  gem update
  dotgrab
}
