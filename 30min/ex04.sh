#!/bin/sh
appFolder="/Users/chenllos/Documents/dev/LIB/tt"
track="$appFolder/track"
current="$appFolder/current"
running="$appFolder/running"
backup="$appFolder/backup"

function needDeploy(){
    cd /Users/chenllos/Documents/dev/LIB/tt/track
    echo 'git pull ing...'
    # res=`git pull`
    echo $res
    res='git pull'
    if [ "$res" == "Already up-to-date." ]
        then
        return 0
    else
        return 1
    fi
}



needDeploy
if [ $? -eq 1 ]
    then
    echo 'need deploy... '

    # -----------------------  npm install   -----------------------
    # `npm install`
    # # 如果安装失败
    # echo $?
    # if [ $? -ne 0 ]
    #     then
    #     echo 'npm install not exit with 0'
    #     exit 101
    # else
    #     echo 'npm install done.'
    # fi

    # -----------------------  gulp build   -----------------------
    gulp
    if [ $? -ne 0 ]
        then
        echo 'gulp build not exit with 0'
        exit 102
    else
        echo 'gulp build done'
    fi

    # -----------------------  copy all file to a new folder   -----------------------
    mkdir 
else
    echo 'up to date, no need deploy'
fi