# This script is from http://forum.ubuntu.org.cn/viewtopic.php?t=364764
# Modified by DY.Feng

# 下载词库
# http://pinyin.sogou.com/dict/

# default.org is from https://code.google.com/p/hslinuxextra/downloads/detail?name=fcitx-sougou-phrase-full.7z&can=2&q=


# 转为 org 格式
mkdir org
find . -name '*.scel' -exec scel2org -o org/{}.org {} \;

# 合并众 org 文件
mkdir dict
cd dict
cat ../org/*.scel.org > 1.org

# 合并 fcitx 基础词库
cat ../default.org >> 1.org
cp ../gbkpy.org .

# 排序、去重、生成词库
sort 1.org >2.org
uniq 2.org >3.org

# 这个要花很长的时间
createPYMB gbkpy.org 3.org

# 结果文件
# pyERROR      词库中重复或有其它问题条目，有兴趣可参考，没事直接忽略
# pyPhrase.ok  除错后的无错的 org 格式词库，可取代 3.org 而保留供下次使用
# pyphrase.mb  最终词库，必须，用于覆盖原文件
# pybase.mb    配套的字码库，必须，用于覆盖原文件

#复制两 .mb 文件至 /usr/share/fcitx/data/ 或 /usr/share/fcitx/pinyin/ 覆盖原文件，或置于 ~/.config/fcitx/ 或 ~/.config/fcitx/pinyin/ 之中。