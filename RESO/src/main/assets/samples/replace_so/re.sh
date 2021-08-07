#!/system/bin/sh
re_so() {
    echo "正在恢复备份..."
    mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak /data/app/*/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so 2> /dev/null 
    if [ $? != 0 ]; then
        echo "正在尝试其它路径..."
        mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak /data/app/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so 2> /dev/null && echo "恢复成功!!!" || echo "恢复失败, 备份文件已被恢复或者备份文件已被删除"
        sha
    else
        echo "恢复成功!!!"
        sha
    fi
}

sha() {
    echo
    echo "当前替换的 libtersafe.so 文件 或 备份文件 md5 值为："
    md5sum /data/local/tmp/lib/armeabi-v7a/libtersafe.so 2> /dev/null 
    md5sum /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak 2> /dev/null 
    echo "当前被替换的 libtersafe.so 文件 md5 值为："
    md5sum /data/app/*/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so 2> /dev/null 
    md5sum /data/app/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so 2> /dev/null 
}

re_so
