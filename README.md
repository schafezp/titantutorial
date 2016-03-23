# titantutorial
This git repository is designed to accompany the Rose-Hulman Titan Tutorial for connecting
to a MSSQL Server.

Included are the bash functions developed during the tutorial.

To run sqlrun use the utility 'sh'

```bash
sh sqlrun.sh
```

This will save the output of the query located in script.sql to the file output.html

To find this output then display it on the browser instead run

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

Additionally, there is a .sqshrc file which sets up the default username and password login for sqsh to use.
Modify the file to include your correct username and password then copy it to your home directory.

```bash
cp .sqshrc ~/.sqshrc
```
