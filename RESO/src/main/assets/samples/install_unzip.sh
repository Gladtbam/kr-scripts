#!/system/bin/sh

cp /data/user/0/com.sgamece.shell/files/samples/unzip /system/bin/ && echo "正在安装 unzip..." || echo "安装失败"
chown root:root /system/bin/unzip && echo "修改权限..." || echo "失败"
chmod 777 /system/bin/unzip && echo -e "修改用户组... \n 成功" || echo "失败"