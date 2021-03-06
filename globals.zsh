# This OS
# - Outputs the current Operating System in lowercase.
this-os() {
    platform='unknown'
    unamestr=$(uname)
    if [[ "$unamestr" == "Darwin" ]];
        then
            platform='osx'
    elif [[ "$unamestr" == "Linux" ]];
        then
            platform='linux'
    elif [[ "$unamestr" == "FreeBSD" ]];
        then
             platform='freebsd'
    fi

    echo $platform
}

# Current Working Directory
# - Shows the current working directory without the full path.
cpwd() {
    echo "${PWD##*/}"
}

# Die die die
# - Kills off the current process.
die() {
    kill -INT $$
}

# Clear Terminal Logs
# - Deletes all terminal logs - useful if prompt is slow.
clear-term-logs() {
    sudo rm -rf /private/var/log/asl/*.asl
}

# URI Escape
# - Escapes/encodes data for use in a URI.
uri-escape() {
    echo "$1" | perl -MURI::Escape -ne 'chomp;print uri_escape($_),"\n"'
}

# Get Piped
# - Get's piped data and allows it to be used elsewhere.
get-piped() {
    piped=''
    if [ ! -t 0 ];
        then
            while read data;
                do
                    piped=$data
            done
    fi
    echo $piped
}

# App Path
# - Returns the Path of the app if it is running.
app-path() {
    echo $(ps -e -o comm | grep $1)
}
