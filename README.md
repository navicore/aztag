# step 1

create prep script with
```console
./az-prep-group-tags.sh "mytag1=one mytag2=two > runme.sh"
```

# step 2

edit `runme.sh` with fine tuned tags!

# step 3

create resource tag commands
```console
bash runme.sh > runme2.sh
```

process the final file of commands in parallel
```console
parallel --jobs 25 < ./runme.sh
```

