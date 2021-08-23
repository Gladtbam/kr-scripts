#!/system/bin/sh
high_auth() {
    echo "正在修改 libtersafe.so 权限为755..."
    chmod 755 /data/app/*/com.tencent.tmgp.sgamece*/lib/*/libtersafe.so 2> /dev/null
    if [ $? != 0 ]; then
        chmod 755 /data/app/com.tencent.tmgp.sgamece*/lib/*/libtersafe.so 2> /dev/null && echo "修改成功!!!" || echo "修改失败"
    else
        echo "修改成功!!!"
    fi

    echo "正在修改 libtersafe.so 用户组为system..."
    chown system:system /data/app/*/com.tencent.tmgp.sgamece*/lib/*/libtersafe.so 2> /dev/null
    if [ $? != 0 ]; then
        chown system:system /data/app/com.tencent.tmgp.sgamece*/lib/*/libtersafe.so 2> /dev/null && echo "修改成功!!!" || echo "修改失败"
    else
        echo "修改成功!!!"
    fi
}

high_auth
