# titantutorial
This git repository is designed to accompany the Rose-Hulman Titan Tutorial for connecting
to a MSSQL Server.

Included are the bash functions developed during the tutorial.

To run sqlrun use the utility 'sh'

```bash
sh sqlrun.sh
```

This will save the output of the query located in script.sql to the file output.html

To generate this output then display it in the browser instead run

```bash
sh sqlrundisplay.sh
```


There are some more useful files which are included here.
If you want to set up the functions to be defined in your ~/.bashrc like the tutorial advises,
simply copy the contents of the "putmeinbashrc" file into ~/.bashrc
Then run 
```bash
source ~/.bashrc
```
Now you can invoke sqlrun from the terminal in the form,

```bash
sqlrun scriptname outputname
```
