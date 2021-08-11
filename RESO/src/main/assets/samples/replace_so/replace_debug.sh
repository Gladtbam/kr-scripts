#!/system/bin/sh
replace_debug() {
    echo "正在解压 libtersafe.so..."
    unzip /data/app/*/com.tencent.tmgp.sgamece*/base.apk "lib/armeabi-v7a/libtersafe.so" -d /data/local/tmp/
    if [ $? != 0 ]; then
        unzip /data/app/com.tencent.tmgp.sgamece*/base.apk "lib/armeabi-v7a/libtersafe.so" -d /data/local/tmp/
        sha
    else
        echo "解压完成!!!"
        sha
    fi
    echo
    echo
    echo "正在备份 libtersafe.so..."
    mv /data/app/*/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak
    if [ $? != 0 ]; then
        mv /data/app/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak
    else
        echo "备份成功, 备份路径为: /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak"
    fi
    echo
    echo
    echo "正在替换 libtersafe.so..."
    mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so /data/app/*/com.tencent.tmgp.sgamece*/lib/arm64/
    if [ $? != 0 ]; then
        mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so /data/app/com.tencent.tmgp.sgamece*/lib/arm64/
        sha
    else
        echo "替换完成!!!"
        sha
    fi
}

sha() {
    echo
    echo "当前替换的 libtersafe.so 文件 md5 值为："
    md5sum /data/local/tmp/lib/armeabi-v7a/libtersafe.so
    echo "当前备份文件 md5 值为："
    md5sum /data/local/tmp/lib/armeabi-v7a/libtersafe.so.bak
    echo "当前被替换的 libtersafe.so 文件 md5 值为："
    md5sum /data/app/*/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so
    md5sum /data/app/com.tencent.tmgp.sgamece*/lib/arm64/libtersafe.so
}

replace_debug