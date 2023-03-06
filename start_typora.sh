
#如果参数定大于1个
if [[ $# -gt 1 ]];then
  echo "be careful"
  exit 1
fi

#参数小于等于一个
if [[ $# -eq 1 ]];then
  echo "2"
  filename=$1
  #文件是否存在
  if [ ! -f $filename ];then
    #不存在则创建文件
    touch $filename
  fi

  nohup typora $filename >/dev/null 2>&1 &
else
  #没有给定文件名
  echo "1"
  nohup typora >/dev/null 2>&1 &
fi







#start_typora
