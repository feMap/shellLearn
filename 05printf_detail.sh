#! /bin/bash

# 个人理解为什么有echo之后还存在类c中的printf函数,主要是为了解决格式化字符串的问题
printf "Hello,Shell\n"
printf "femap\n"

# 下面就是printf的代表用法
# printf will not automaticly change line
printf '%d %s \n' 12138 femap


# 类似表格输出功能
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 

# %-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐），任何字符都会被显示在10个字符宽的字符内，如果不足则自动以空格填充，超过也会将内容全部显示出来。
# %-4.2f 指格式化为小数，其中.2指保留2位小数。

# 没有引号也可以输出
printf %s abcdef

# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def

# 注意echo是自带\n换行的,而printf是不带\n换行的

printf "%s %s %s\n" a b c d e f g h i j

printf "%f and %.2f \n" 1.212131234 1.212131234

# 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
printf "%s and %d \n" 

# %d %s %c %f 格式替代符详解:
# d: Decimal 十进制整数 -- 对应位置参数必须是十进制整数，否则报错！
# s: String 字符串 -- 对应位置参数必须是字符串或者字符型，否则报错！
# c: Char 字符 -- 对应位置参数必须是字符串或者字符型，否则报错！
# f: Float 浮点 -- 对应位置参数必须是数字型，否则报错！
# 如：其中最后一个参数是 "def"，%c 自动截取字符串的第一个字符作为结果输出。
