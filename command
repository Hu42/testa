date -s '18-1-1''1:1:1'
date +"%T"
for f in %n %t %% %s %j %Y %y %m %b %B %d %e %W %w %a %A %H %M %S %F %D %T %F.%A.%T;
do a="date +$f";echo -e "$a\t\c";$a;done

echo -n -e 
	\NNN  字符的ASCII代码为NNN(八进制)
	\\    反斜线
	\a    报警符(BEL)
	\b    退格符
	\c    禁止尾随的换行符
	\f    换页符
	\n    换行符
	\r    回车符
	\t    水平制表符
	\v    纵向制表符
echo -e "\033[44;37;5m ME\033[0m COOL"
\033[2J  　   清除屏幕          
\033[0q  　   关闭所有的键盘指示灯          
\033[1q 　    设置"滚动锁定"指示灯(Scroll Lock)          
\033[2q 　    设置"数值锁定"指示灯(Num Lock)          
\033[3q 　    设置"大写锁定"指示灯(Caps Lock)          
\033[15:40H   把光标移动到第15行，40列 
\33[0m  关闭所有属性
\33[1m  设置高亮度
\33[4m  下划线
\33[5m  闪烁
\33[7m  反显
\33[8m  消隐
\33[nA  光标上移n行
\33[nB  光标下移n行
\33[nC  光标右移n行
\33[nD  光标左移n行
\33[K   清除从光标到行尾的内容
\33[s   保存光标位置
\33[u   恢复光标位置
\33[?25l  隐藏光标
\33[?25h  显示光标

printf 
%b 相对应的参数被视为含有要被处理的转义序列之字符串。
%c ASCII字符。显示相对应参数的第一个字符
%d, %i 十进制整数
%e, %E, %f 浮点格式
%g %e或%f转换，看哪一个较短，则删除结尾的零
%G %E或%f转换，看哪一个较短，则删除结尾的零
%o 不带正负号的八进制值
%s 字符串
%u 不带正负号的十进制值
%x 不带正负号的十六进制值，使用a至f表示10至15
%X 不带正负号的十六进制值，使用A至F表示10至15
%% 字面意义的%
printf "hello world"

printf "%-5s %-10s %-4s\n" NO Name Mark
printf "%-5s %-10s %-4.2f\n" 01 Tom 90.3456
printf "%-5s %-10s %-4.2f\n" 02 Jack 89.2345
printf "%-5s %-10s %-4.2f\n" 03 Jeff 98.4323
%-5s 格式为左对齐且宽度为5的字符串代替（-表示左对齐），不使用则是又对齐。
%-4.2f 格式为左对齐宽度为4，保留两位小数


grep 
       -A NUM, --after-context=NUM
       -B NUM, --before-context=NUM
       -C NUM, --context=NUM
       -b, --byte-offset
       -c, --count	禁止通常的输出，为每一个输入文件打印一个匹配的行的总数。      
	  -E, --extended-regexp
       -n, --line-number
       -o, --only-matching
       -m NUM, --max-count=NUM
       -s, --no-messages
       -q, --quiet, --silent
       -H, --with-filename
       -h, --no-filename
       -w, --word-regexp
       -x, --line-regexp
       -i, --ignore-case
       -L, --files-without-match
       -l, --files-with-matches
       -R, -r, --recursive	递归地读每一目录下的所有文件。这样做和 -d recurse 选项等价。

read [-ers] [-a 数组] [-d 分隔符] [-i 缓冲区文字] [-n 读取字符数] [-N 读取字符数] [-p 提示符] [-t 超时] [-u 文件描述符] [名称 ...][-s 不回显]

netstat命令可以查看系统中启动的端口信息，该命令常用选项如下：
-n以数字格式显示端口号
-t显示TCP连接的端口
-u显示UDP连接的端口
-l显示服务正在监听的端口信息，如httpd启动后，会一直监听80端口
-p显示监听端口的服务名称是什么（也就是程序名称）

[root@svr5 ~]# uptime                            //查看CPU负载
[root@svr5 ~]# ifconfig eth0                    //查看网卡流量
[root@svr5 ~]# free                            //查看内存信息
[root@svr5 ~]# df                                //查看磁盘空间
[root@svr5 ~]# wc -l /etc/passwd                //查看计算机账户数量
[root@svr5 ~]# who |wc -l                        //查看登录账户数量
[root@svr5 ~]# rpm -qa |wc -l                    //查看已安装软件包数量
/var/log/secure

yum -y install gcc openssl-devel pcre-devel
tar -xf nginx-1.12.2.tar.gz
cd nginx-1.12.2
./configure
make
make install
Nginx默认安装路径为/usr/local/nginx,该目录下会提供4个子目录，分别如下：
/usr/local/nginx/conf	配置文件目录
/usr/local/nginx/html	网站页面目录
/usr/local/nginx/logs	Nginx日志目录
/usr/local/nginx/sbin	主程序目录
主程序命令参数：
[root@svr5 ~]# /usr/local/nginx/sbin/nginx                //启动服务
[root@svr5 ~]# /usr/local/nginx/sbin/nginx    -s stop        //关闭服务
[root@svr5 ~]# /usr/local/nginx/sbin/nginx    -V            //查看软件信

select var in 11 12 13 ;do break;done;echo $var
1) 11
2) 12
3) 13
#? 1

view a.log
less
uniq

ls
       -C     多列输出，纵向排序。
       -F     每个目录名加“ / ”后缀，每个 FIFO 名加“ | ”后缀， 每个可运行名加“ * ”后缀。
       -R     递归列出遇到的子目录。
       -a     列出所有文件，包括以 "." 开头的隐含文件。
       -d     将目录名象其它文件一样列出，而不是列出它们的内容。
       -i     输出文件前先输出文件系列号（即 i 节点号: i-node number）。 
	  -l     列出（以单列格式）文件模式（ file mode），文件的链接数，所有者名，组名，文件大小（以字节为单位），时间信息，及文件名。
		缺省时，时间信息显示最近修改时间；可以以选项“-c”和“  -u”选择显示其它两种时间信息。
		对于设备文件，原先显示文件大小的区域通常显示的是主要和次要的号（majorand minor device numbers）。
       -c     使用“状态改变时间”代替“文件修改时间”为依据来排序   （使用“   -t    ”选项时）或列出（使用“    -l”选项时）。
       -r     逆序排列。
       -t     按时间信息排序。
       -u     使用最近访问时间代替最近修改时间为依据来排序（使用 “ -t ”选项时）或列出（使用“ -l ”选项时）。
           -1        单列输出。
       -q     将文件名中的非打印字符输出为问号。（对于到终端的输出这是缺省的。）


ipcs	一些进程间通讯的信息，包括共享内存，信号量这些。
ipcrm 就是清理一下ipc的资源

cp
-a：此选项通常在复制目录时使用，它保留链接、文件属性，并复制目录下的所有内容。其作用等于dpR参数组合。
-d：复制时保留链接。这里所说的链接相当于Windows系统中的快捷方式。
-f：覆盖已经存在的目标文件而不给出提示。
-i：与-f选项相反，在覆盖目标文件之前给出提示，要求用户确认是否覆盖，回答"y"时目标文件将被覆盖。
-p：除复制文件的内容外，还把修改时间和访问权限也复制到新文件中。
-r：若给出的源文件是一个目录文件，此时将复制该目录下所有的子目录和文件。
-l：不复制文件，只是生成链接文件。

tar 
       -t, --list 列出存档中文件的目录
       -c, --create 建立新的存档
       -x, --extract, --get 从存档提取文件
       -v, --verbose 详细显示处理的文件co	
z 是因为你解压gz的文件 x是从文档中释放 v是报告详细信息 f是使用tar必选的放最后 不一定要是zxvf 这是参数 给你一些其他的参数 ^.^
c 创建新的档案文件。如果用户想备份一个目录或是一些文件，就要选择这个选项。
r 把要存档的文件追加到档案文件的未尾。例如用户已经作好备份文件，又发现还有一个目录或是一些文件忘记备份了，这时可以使用该选项，将忘记的目录或文件追加到备份文件中。
t 列出档案文件的内容，查看已经备份了哪些文件。
u 更新文件。就是说，用新增的文件取代原备份文件，如果在备份文件中找不到要更新的文件，则把它追加到备份文件的最后。
x 从档案文件中释放文件。
辅助选项：
b 该选项是为磁带机设定的。其后跟一数字，用来说明区块的大小，系统预设值为20（20*512 bytes）。
f 使用档案文件或设备，这个选项通常是必选的。
k 保存已经存在的文件。例如我们把某个文件还原，在还原的过程中，遇到相同的文件，不会进行覆盖。
m 在还原文件时，把所有文件的修改时间设定为现在。
M 创建多卷的档案文件，以便在几个磁盘中存放。
v 详细报告tar处理的文件信息。如无此选项，tar不报告文件信息。
w 每一步都要求确认。
z 用gzip来压缩/解压缩文件，加上该选项后可以将档案文件进行压缩，但还原时也一定要使用该选项进行解压缩。

head -c -n (-cK print the first K bytes of each file)

sort [-fbMnrtuk] [file or stdin]
-f  ：忽略大小写的差异，例如 A 与 a 视为编码相同；
-b  ：忽略最前面的空格符部分；
-M  ：以月份的名字来排序，例如 JAN, DEC 等等的排序方法；
-n  ：使用『纯数字』进行排序(默认是以文字型态来排序的)；
-r  ：反向排序；
-u  ：就是 uniq ，相同的数据中，仅出现一行代表；
-t  ：分隔符，默认是用 [tab] 键来分隔；
-k  ：以那个区间 (field) 来进行排序的意思

column
 -c, --columns <宽度>     输出宽度(字符数)
 -t, --table              创建表格
 -s, --separator <字符串> 可用的表格分隔符
 -o, --output-separator <字符串> 表格输出列分隔符，默认为两个空格
 -x, --fillrows           先填充行，再填充列

su
du
ps
make
df	看磁盘占用情况


