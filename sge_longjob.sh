#$-V
#$-cwd
#$-N jobname
#$-l h_rss=4G,h_rt=48:00:00

# -V says to use your environment
# -cwd switches to the current directory
# -N is the name prefix for the job (stderr and stdout will be jobname.e{jid} jobname.o{jid} respectively
# -l specifies the scheduling parameters, 
#           h_rss is the available memory required to schedule the job 
#           h_rt is the runtime limit for your job


bash run_my_command.sh
