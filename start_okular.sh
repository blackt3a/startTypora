

if [[ $# -gt 1 ]];then
  echo "be careful"
  exit 1
fi


if [[ $# -eq 1 ]];then
  echo "2"
  filename=$1
  nohup okular $filename >/dev/null 2>&1 &
else
  echo "1"
  nohup okular >/dev/null 2>&1 &
fi






