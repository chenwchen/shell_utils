#!/bin/bash

:<<EOF
单引号    : 可以说是所见即所得：即将单引号内的内容原样输出，或者描述为单引号里面看见的是什么就会输出什么
双引号    : 把双引号内的内容输出出来；如果内容中有命令，变量等，会先把变量，命令解析出结果，然后在输出最终内容来。
双引号内命令或变量的写法为`命令或变量`或$（命令或变量）。
不加引号  : 把内容输出出来，可能不会讲含有空格的字符串视为一个整体输出，如果内容中有命令，变量等，会先把变量，命令解析结果，然后在输出最终内容来，如果字符串中带有空格等特殊字符
则不能完整的输出，需要改加双引号，一般连续的字符串，数字，路径等可以用，不过最好用双引号替代之
https://zshguide.readthedocs.io/zh/latest/content/ch02.html
EOF
str_a="hello world"
 
echo "${#str_a}"    # 获取长度

echo ${str_a:1:-1}  # 字符串切片

for ((i = 0; i < ${#str_a}; i++))
do
    echo ${str_a:$i:1}
done

# 替换
echo ${str_a/e/3}
# 查找
expr index ${str_a}"e"
expr index ${str_a}"o"