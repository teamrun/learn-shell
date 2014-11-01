#!/bin/sh

# test 命令

# 会被原样输出
# echo [2 -lt 4]

# 数字比较
two=2
four=4
# 中括号包裹判断式
# []两边要各有空格

# if [ $two -lt $four ]
# then
#     echo '2 is less than 4'
# else
#     echo 'wrong...math'
# fi


# 字母比较
# a='a'
# b='b'
# if [ $a \< $b ]
# then
#     echo '字母也按顺序比较'
# fi

# 字母混合数字
a='aaaaaaaa1'
b='aaaaaaaa02'
if [ $a \> $b ]
then
    echo '看样子跟js的字符串比较一样'
fi

# 带空格的字符串对比 要用引号引起来
# 见这里
# http://dogdogcom.blog.51cto.com/2402458/494726
# 所以比较健康的是 全部都用引号 双引号
# 单引号是原样输出
res='Alread up-to-date'
if [ "$res" = 'Alread up-to-date' ]
then
    echo 'no need to deploy'
else
    echo 'gonna deply'
fi

# 有boolean类型么```
if true
    then
    echo 'have boolean value'
else
    echo 'no boolean value'
fi