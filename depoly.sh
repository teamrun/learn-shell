#!/bin/sh
# 我的部署脚本

# function
# 返回值 只能是数字....
# 唉...
function checkUpdates(){
    res=`git pull`
    if [ "$res" == "Already up-to-date." ]
        then
        echo 'up-to-date'
        return 0
    else
        echo 'gonna deploy'
        return 1
    fi
}



# 来到trace文件夹
cd /Users/chenllos/Documents/dev/LIB/tt/track


# git pull, check if need to
while true
do
    # if isNeedDepoly()
    #     then
    #     echo 'up-to-date'
    # else
    #     echo 'gonna deploy...'
    # fi

    checkUpdates
    sleep 15
done




# run npm install, run gulp
# installRes=`npm install`
