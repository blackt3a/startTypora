

if [[ $# -gt 1 ]];then
  echo "be careful"
  exit 1
fi


if [[ $# -eq 1 ]];then
  echo "2"
  filename=$1
  touch $filename
  nohup typora $filename >/dev/null 2>&1 &
else
  echo "1"
  nohup typora >/dev/null 2>&1 &
fi






# else
#    touch $1
#    echo $1
#  fi
#}

#start_typora
