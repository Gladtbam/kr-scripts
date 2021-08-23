#!/system/bin/sh
FontColor_Red="\033[31m"
FontColor_Red_Bold="\033[1;31m"
FontColor_Green="\033[32m"
FontColor_Green_Bold="\033[1;32m"
FontColor_Yellow="\033[33m"
FontColor_Yellow_Bold="\033[1;33m"
FontColor_Purple="\033[35m"
FontColor_Purple_Bold="\033[1;35m"
FontColor_Suffix="\033[0m"

replace() {
    echo "正在解压 libtersafe.so..."
    unzip /data/app/*/com.tencent.tmgp.sgamece*/base.apk "lib/armeabi-v7a/libtersafe.so" -d /data/local/tmp/ 2> /dev/null 
    if [ $? != 0 ]; then
        unzip /data/app/com.tencent.tmgp.sgamece*/base.apk "lib/armeabi-v7a/libtersafe.so" -d /data/local/tmp/ 2> /dev/null && echo "解压完成!!!" || echo "解压失败, 请使用“替换(DEBUG)”重试 并 联系作者: 酷安 BY 山抹清风"
        sha
    else
        echo "解压完成!!!"
        sha
    fi
    echo
    echo
    echo "正在备份 libtersafe.so..."
    mv /data/app/*/com.tencent.tmgp.sgamece*/lib/*/libtersafe.so /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak 2> /dev/null
    if [ $? != 0 ]; then
        mv /data/app/com.tencent.tmgp.sgamece*/lib/*/libtersafe.so /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak 2> /dev/null && echo "备份成功, 备份路径为: /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak" || echo "备份失败, 请使用“替换(DEBUG)”重试 并 联系作者: 酷安 BY 山抹清风"
    else
        echo "备份成功, 备份路径为: /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak"
    fi
    echo
    echo
    echo "正在替换 libtersafe.so..."
    mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so /data/app/*/com.tencent.tmgp.sgamece*/lib/arm*/ 2> /dev/null
    if [ $? != 0 ]; then
        mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so /data/app/com.tencent.tmgp.sgamece*/lib/arm*/ 2> /dev/null && echo "替换完成!!!" || echo "替换失败, 请使用“替换(DEBUG)”重试 并 联系作者: 酷安 BY 山抹清风"
        sha
    else
        echo "替换完成!!!"
        sha
    fi
}

sha() {
    echo
    echo "当前替换的 libtersafe.so 文件 md5 值为："
    md5sum /data/local/tmp/lib/armeabi-v7a/libtersafe.so 2> /dev/null || echo "文件已被替换或未提取替换文件"
    echo "当前备份文件 md5 值为："
    md5sum /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak 2> /dev/null || echo "暂无备份"
    echo "当前被替换的 libtersafe.so 文件 md5 值为："
    md5sum /data/app/*/com.tencent.tmgp.sgamece*/lib/*/libtersafe.so 2> /dev/null
    md5sum /data/app/com.tencent.tmgp.sgamece*/lib/*/libtersafe.so 2> /dev/null
}

replace