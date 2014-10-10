#!/bin/sh
# -------------  变量  -------------

# 定义变量和赋值 等号两边不能有空格
appPath='~/Documents/dev/LIB/tt/running/app.js'
# 调用是需要用$varibleName 或 ${varibleName}
echo $appPath

# 字符串直接量~?
for skill in Java shell 'ECMA '; do
    echo "i am good at ${skill}Script"
done

# 语句赋值
# 1前面的那个符号, 代表执行其中的语句`cmdName param`
# for file in `ls ~/`; do
#     echo $file
# done

myName="teamrun"
echo $myName

myName="chenllos"
echo $myName