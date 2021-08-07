#!/system/bin/sh
re_auth() {
    echo "正在恢复 tss_tmp 文件夹权限为700..."
    chmod 700 /data/user/0/com.tencent.tmgp.sgamece/files/tss_tmp/ 2> /dev/null && echo "恢复成功" || echo "恢复失败"
}

re_auth
