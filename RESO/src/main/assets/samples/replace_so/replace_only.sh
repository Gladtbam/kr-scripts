#!/system/bin/sh
replace_only() {
    echo "正在解压 libtersafe.so..."
    unzip /data/app/*/com.tencent.tmgp.sgamece*/base.apk "lib/armeabi-v7a/libtersafe.so" -d /data/local/tmp/ 2> /dev/null 
    if [ $? != 0 ]; then
        unzip /data/app/com.tencent.tmgp.sgamece*/base.apk "lib/armeabi-v7a/libtersafe.so" -d /data/local/tmp/ 2> /dev/null && echo "解压完成!!!" || echo "解压失败, 请使用“替换(DEBUG)”重试 并 联系作者: 酷安 BY 山抹清风"
    else
        echo "解压完成!!!"
    fi
    echo
    echo
    echo "正在替换 libtersafe.so..."
    mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so /data/app/*/com.tencent.tmgp.sgamece*/lib/arm*/ 2> /dev/null
    if [ $? != 0 ]; then
        mv /data/local/tmp/lib/armeabi-v7a/libtersafe.so /data/app/com.tencent.tmgp.sgamece*/lib/arm*/ 2> /dev/null && echo "替换完成!!!" || echo "替换失败, 请使用“替换(DEBUG)”重试 并 联系作者: 酷安 BY 山抹清风"
    else
        echo "替换完成!!!"
    fi
}

replace_only
