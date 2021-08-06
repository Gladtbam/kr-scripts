#!/system/bin/sh
low_auth() {
    echo
    echo "正在修改 tss_tmp 文件夹权限为000..."
    chmod 000 /data/user/0/com.tencent.tmgp.sgamece/files/tss_tmp/ 2> /dev/null && echo "修改成功" || echo "修改失败"
}

low_auth
