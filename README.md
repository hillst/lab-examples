# lab-examples

## SGE cheatsheet

- run_snakemake.sh
    Simple command for running snakemake on the cluster. Uses the cluster.yaml config and the SnakeSort.smk snakefile.
- sge_gridarray_merge.sh
    Grid array merge step (for scatter gather)
- sge_gridarray_spit.sh
    Grid array split step (for scatter gather)
- sge_longjob.sh
    SGE with example settings for a very long job.
- sge_template.sh
    SGE template for building your own SGE script!

### Commands

qstat -- show status of current jobs. qw is queue wait, Ew, is error wait (need to delete job), r is running, dr, is deleting running job.

qstat -F -- shows full output of all nodes on the cluster. Recommend filtering output with grep or viewing it with less.

qdel -- delete jobs with either the jobname or the jobid. Use -u your_username to delete all of your active jobs.c

qquota -- show your current quota usage.

### Headers/runtime parameters

``` bash
-l h_rt=HH:MM:SS,h_rss=1G
-cwd
-V
-N myjobname
-t 1:22-1 
```

-l, runtime parameters
-cwd, use the current working directory
-V, inheret all environment variables
-N, name for this job, can be used with other commands using id/names
-t grid array options. Will create SGE_TASK_ID for each number from 1 to 22, interval of 1. Change these numbers accordingly.




