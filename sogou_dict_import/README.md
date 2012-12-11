sogou_dict_import
============

导入搜狗词库到fcitx

#文件结构

- default.org 默认词库，[下载地址](https://code.google.com/p/hslinuxextra/downloads/detail?name=fcitx-sougou-phrase-full.7z&can=2&q=) 
- gbkpy.org 应该是码表

#用法

1. 到 [搜狗词库](http://pinyin.sogou.com/dict/) 下载字典（*.scel格式）到本目录，想下多少都行，不怕重复
2. `$./import_sogou_to_fcitx.sh`
3. 复制两 .mb 文件至 /usr/share/fcitx/data/ 或 /usr/share/fcitx/pinyin/ 覆盖原文件，或置于 ~/.config/fcitx/ 或 ~/.config/fcitx/pinyin/ 之中。