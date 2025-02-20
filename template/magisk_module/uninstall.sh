ABI=$(getprop ro.product.cpu.abi)

if [ $ABI = "x86" ]; then
  if [ -d "/data/data/jp.co.cygames.umamusume" ]; then
    umount -f /data/data/jp.co.cygames.umamusume/armeabi-v7a.so
    rm /data/data/jp.co.cygames.umamusume/armeabi-v7a.so
  fi
  if [ -d "/data/data/com.kakaogames.umamusume" ]; then
    umount -f /data/data/com.kakaogames.umamusume/armeabi-v7a.so
    rm /data/data/com.kakaogames.umamusume/armeabi-v7a.so
  fi
  if [ -d "/data/data/com.komoe.kmumamusumegp" ]; then
    umount -f /data/data/com.komoe.kmumamusumegp/armeabi-v7a.so
    rm /data/data/com.komoe.kmumamusumegp/armeabi-v7a.so
  fi
  if [ -d "/data/data/com.komoe.kmumamusumemc" ]; then
    umount -f /data/data/com.komoe.kmumamusumemc/armeabi-v7a.so
    rm /data/data/com.komoe.kmumamusumemc/armeabi-v7a.so
  fi
  if [ -d "/data/data/com.komoe.umamusumeofficial" ]; then
    umount -f /data/data/com.komoe.umamusumeofficial/armeabi-v7a.so
    rm /data/data/com.komoe.umamusumeofficial/armeabi-v7a.so
  if [ -d "/data/data/com.bilibili.umamusu" ]; then
    umount -f /data/data/com.bilibili.umamusu/armeabi-v7a.so
    rm /data/data/com.bilibili.umamusu/armeabi-v7a.so
  fi
elif [ $ABI = "x86_64" ]; then
  if [ -d "/data/data/jp.co.cygames.umamusume" ]; then
    umount -f /data/data/jp.co.cygames.umamusume/arm64-v8a.so
    umount -f /data/data/jp.co.cygames.umamusume/armeabi-v7a.so
    rm /data/data/jp.co.cygames.umamusume/arm64-v8a.so
    rm /data/data/jp.co.cygames.umamusume/armeabi-v7a.so
  fi
  if [ -d "/data/data/com.kakaogames.umamusume" ]; then
    umount -f /data/data/com.kakaogames.umamusume/arm64-v8a.so
    umount -f /data/data/com.kakaogames.umamusume/armeabi-v7a.so
    rm /data/data/com.kakaogames.umamusume/arm64-v8a.so
    rm /data/data/com.kakaogames.umamusume/armeabi-v7a.so
  fi
  if [ -d "/data/data/com.komoe.kmumamusumegp" ]; then
    umount -f /data/data/com.komoe.kmumamusumegp/arm64-v8a.so
    umount -f /data/data/com.komoe.kmumamusumegp/armeabi-v7a.so
    rm /data/data/com.komoe.kmumamusumegp/arm64-v8a.so
    rm /data/data/com.komoe.kmumamusumegp/armeabi-v7a.so
  fi
  if [ -d "/data/data/com.komoe.kmumamusumemc" ]; then
    umount -f /data/data/com.komoe.kmumamusumemc/arm64-v8a.so
    umount -f /data/data/com.komoe.kmumamusumemc/armeabi-v7a.so
    rm /data/data/com.komoe.kmumamusumemc/arm64-v8a.so
    rm /data/data/com.komoe.kmumamusumemc/armeabi-v7a.so
  fi
  if [ -d "/data/data/com.komoe.umamusumeofficial" ]; then
    umount -f /data/data/com.komoe.umamusumeofficial/arm64-v8a.so
    umount -f /data/data/com.komoe.umamusumeofficial/armeabi-v7a.so
    rm /data/data/com.komoe.umamusumeofficial/arm64-v8a.so
    rm /data/data/com.komoe.umamusumeofficial/armeabi-v7a.so
  if [ -d "/data/data/com.bilibili.umamusu" ]; then
    umount -f /data/data/com.bilibili.umamusu/arm64-v8a.so
    umount -f /data/data/com.bilibili.umamusu/armeabi-v7a.so
    rm /data/data/com.bilibili.umamusu/arm64-v8a.so
    rm /data/data/com.bilibili.umamusu/armeabi-v7a.so
  fi
fi

# Don't modify anything after this
if [ -f $INFO ]; then
  while read LINE; do
    if [ "$(echo -n $LINE | tail -c 1)" == "~" ]; then
      continue
    elif [ -f "$LINE~" ]; then
      mv -f $LINE~ $LINE
    else
      rm -f $LINE
      while true; do
        LINE=$(dirname $LINE)
        [ "$(ls -A $LINE 2>/dev/null)" ] && break 1 || rm -rf $LINE
      done
    fi
  done < $INFO
  rm -f $INFO
fi
