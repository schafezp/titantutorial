sqlrun(){
    #Parameter 1 is sql script file, Parameter 2 is output destination html file
    #if non zero length first parameter,
    if [ -z "$1" ]
    then
        echo "No script parameter 1 passed!"
        return 0
    else
        #if non zero length first parameter
        #and if non zero length second parameter
        if [ -z "$2" ]
        then 
            echo "No destination parameter 2 passed"
            return 0
        else
            #if both conditions met, run the script
            echo "Script to be run is \"$1\" with destination \"$2\"."
            #cat $1 | sqsh -S TITAN > $2  && xdg-open $2 > /dev/null 2>&1
            cat $1 | sqsh > $2  
            return 1
        fi
    fi
};
#automagically display result of sql query.
sqlrundisplay(){
    #Parameter 1 is sql script file, 
    #Parameter 2 is output destination html file
    if [ -z "$1" ]
    then
        echo "No script parameter 1 passed!"
        return 0
    else
        if [ -z "$2" ]
        then 
            echo "No destination parameter 2 passed"
            return 0
        else
            sqlrun $1 $2  & xdg-open $2 > /dev/null 2>&1
            return 1
        fi
    fi
};
sqlrundisplay script.sql output.html


