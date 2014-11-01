#!/bin/sh

appFolder="/Users/chenllos/Documents/dev/LIB/tt"
track="$appFolder/track"
current="$appFolder/current"
running="$appFolder/running"


function copyFolderTo(){
    # echo $1
    # echo $2
    # 将$1其下的所有文件都cp到指定目录
    # mac下和linux下 path/的行为不一样...
    # mac下会只拷贝以下的所有文件
    # linux会连指定的文件夹一起拷过去, 多一层目录
    # 还是统一没有/吧
    cp -R "$1" "$2"
}

function softLinkTo(){
    echo $1
    echo $running
    ln -sfn "$1" "$running"
}


# create foler by time
curTime=`date "+%y-%m-%d_%H:%M:%S"`
newFolderName="$current/$curTime"
# 如果文件名中间有空格的话 就需要跟if中的test一样  
# 加引号, 避免解析错误
mkdir "$newFolderName"
if [ $? -eq 0 ]
    then
    echo '新建文件夹成功'
else
    echo '新建文件夹失败...'
    exit 201
fi

copyFolderTo $track $newFolderName

softLinkTo "$newFolderName/track"

if [ $? -eq 0 ]
    then
    echo "修改软连接成功"
else
    echo "修改软连接失败"
fi

pm2 list

echo $?
