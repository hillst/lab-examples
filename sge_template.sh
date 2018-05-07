#$-V
#$-cwd
#$-N jobname
#$-l h_rss=4G,h_rt=00:05:00

INPUT=${1}
echo "hello world"
ls `${INPUT}`
