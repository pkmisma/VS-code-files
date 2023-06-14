cat /etc/shadow > /dev/null
op = `echo $?`
if [ 0 = $op ]
then 
  echo "command successed"
else
  echo "command failed"
fi