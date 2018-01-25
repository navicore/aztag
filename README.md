# step 1

list groups with `az-get-groups.sh``

# step 2

for each group run `az-tag-group.sh GROUP_NAME "mytag1=one mytag2=two"` and run the output commands

process the final file of commands in parallel
```console
parallel --jobs 10 < ./runme2.sh
```

