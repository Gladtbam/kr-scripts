#!/system/bin/sh
Path="/data/local/tmp/"

if [ ! -d "$Path" ]; then
  mkdir "$Path"
  chown shell:shell "$Path"
  chmod 771 "$Path"
fi