#!/system/bin/sh
replace() {
    echo
    echo "正在解压 libtersafe.so..."
    unzip /data/app/*/com.tencent.tmgp.sgamece*/base.apk "lib/armeabi-v7a/libtersafe.so" -d /data/local/tmp/ 2> /dev/null 
    if [ $? != 0 ]; then
        echo "解压失败, 文件不在当前路径下, 正在尝试其它路径..."
        unzip /data/app/com.tencent.tmgp.sgamece*/base.apk "lib/armeabi-v7a/libtersafe.so" -d /data/local/tmp/ 2> /dev/null && echo "解压完成!!!" || echo "解压失败, 找不到路径, 请使用 ROOT 权限执行脚本 或 请联系作者: 酷安 BY 山抹清风"
        sha
    else
        echo "解压完成!!!"
        sha
    fi
    echo
    echo
    echo "正在备份 libtersafe.so..."
    mv /data/app/*/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak 2> /dev/null 
    if [ $? != 0 ]; then
        echo "正在尝试其它路径..."
        mv /data/app/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak 2> /dev/null && echo "备份成功, 备份路径为: /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak" || echo "备份失败, 找不到路径, 请联系作者: 酷安 BY 山抹清风"
    else
        echo "备份成功, 备份路径为: /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak"
    fi
    echo
    echo
    echo "正在替换 libtersafe.so..."
    mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so /data/app/*/com.tencent.tmgp.sgamece*/lib/arm64/ 2> /dev/null 
    if [ $? != 0 ]; then
        echo "正在尝试其它路径..."
        mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so /data/app/com.tencent.tmgp.sgamece*/lib/arm64/ 2> /dev/null && echo "替换完成!!!" || echo "替换失败, 找不到路径, 请使用 ROOT 权限执行脚本 或 请联系作者: 酷安 BY 山抹清风"
        sha
    else
        echo "替换完成!!!"
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

replace