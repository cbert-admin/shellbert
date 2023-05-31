chill(){
    [[ ! -z $1 && $1 =~ ^[[:alnum:]_-]+$ ]] || { echo "Where you wanna chill?" >&2; exit 1; }
    local host=$1
    # Start at $HOME
    cd ~
    # Compress the directory into a tar.gz file
    tar -czf dots.tar.gz ~/.shellrc
    # Transfer the tar.gz file to the remote host using scp
    scp dots.tar.gz "$host":/tmp/
    # Untar the file in the home directory (~) of the remote host
    ssh "$host" "tar -xzf /tmp/dots.tar.gz -C ~"
    # Cleanup: Remove the tar.gz file
    rm dots.tar.gz
    # Make symlinks for dots
    ssh "$host" "ln -sfv ~/.shellrc/bashrc ~/.bashrc"
    ssh "$host" "ln -sfv ~/.shellrc/bash_profile ~/.bash_profile"
    ssh "$host" "ln -sfv ~/.shellrc/rc.d/vim ~/.vim"
    ssh "$host" "ln -sfv ~/.shellrc/rc.d/.vimrc ~/.vimrc"
    ssh -A "$host"
}