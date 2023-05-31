dotsnag(){
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
  shellrcgrab
  lpgrab
}

updates(){
  sudo apt update && sudo apt upgrade -y
  brew update
  cargo update
  gem update
  shellrcgrab
  lpgrab
}
