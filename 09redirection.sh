#! /bin/bash

# 大多数 UNIX 系统命令从你的终端接受输入并将所产生的输出发回到您的终端
# 一个命令通常从一个叫标准输入的地方读取输入，默认情况下，这恰好是你的终端
# 一个命令通常将其输出写入到标准输出，默认情况下，这也是你的终端

# 计算机中的输入输入如下:
# 0 是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）

cd ${0%/*} || exit 1 # run from this dictionary

mkdir remountFILE
who > ./remountFILE/users
cat ./remountFILE/users

# 直接覆盖文件
echo line 1 > users2
cat ./remountFILE/users2

# >>表示追加模式
echo line 2 >>users2
cat ./remountFILE/users2

# 关于重定向的常见记号
# command > file	将输出重定向到 file。
# command < file	将输入重定向到 file。
# command >> file	将输出以追加的方式重定向到 file。
# n > file	将文件描述符为 n 的文件重定向到 file。
# n >> file	将文件描述符为 n 的文件以追加的方式重定向到 file。
# n >& m	将输出文件 m 和 n 合并。
# n <& m	将输入文件 m 和 n 合并。
# << tag	将开始标记 tag 和结束标记 tag 之间的内容作为输入。

# Here Document 是 Shell 中的一种特殊的重定向方式，用来将输入重定向到一个交互式 Shell 脚本或程序。
# command << delimiter
#     document
# delimiter

# 可以利用<<完成命令行的交互，>>则是对应着追加模式
cat << EOF
欢迎来到
菜鸟教程
www.runoob.com
EOF

# 如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null

ls > /dev/null 2>&1

# 如果希望将 stdout 和 stderr 合并后重定向到 file，可以这样写：
ls  > file 2>&1
ls >> file 2>&1


