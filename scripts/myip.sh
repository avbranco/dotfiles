IP=`curl -s icanhazip.com`
echo $IP && grep $IP /home/avbranco/work/pia/server_tools/bin/common/pia_includes.rb | tail -n 1 | awk '{print $1}'
