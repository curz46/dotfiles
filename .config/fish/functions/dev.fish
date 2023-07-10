function dev --argument config
 ssh $config -t "bash -i <<< 'cd /home/pit/workspace/PIT/pit && source ./myenv/bin/activate && cd ngcinstall/ngcutils; exec </dev/tty'"; 
end
