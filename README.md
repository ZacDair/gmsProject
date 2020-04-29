# GameMaker Studio Project  

## Project Description:
Current project idea, is to create a 2D isometric game featuring multiple professions (Farmer, Blacksmith, etc...) in Gamemaker.  

*Add more here as needed to explain the overall project idea*

## Repo Layout:  

**master** branch is used as a main consitent branch storing our most recent fully working code.  
**Zac** and **Michael** are personal dev branches.  

## Gamemaker Source Control Commands:
*Commands Listed are as of 30/04/20*  
*These commands may also be in a different order in gamemaker than seen here*  

In Gamemaker there are a list of commands available in the source control section (available by right clicking on items).  

`Add to source control` - adds any untracked files to staging  
`Commit to source control` - commits any files in staging  
`Update from source control` - pulls files from origin (remote repo) to the local master branch  
`Commit All`  
`Refresh`  
`Refresh All`  
`Revert`  
`Revert All`  
`Update All`  
`Add All`  
`Clean`  
`Blame`  
`Push` - shouldn't work could be changed to push to origin master but to prevent any issues might avoid using that  
`Switch to master` - changes branch to master  
`Switch to Michael` - changes branch to Michael  
`Switch to Zac` - changes branch to Zac  
`Push to Zac` - sends any commited changes to the remote Zac branch  
`Push to Michael` - sends any commited changes to the remote Michael branch  
`Git Status` - shows the status, what branch you are on, what files are untracked  
`Merge master Michael` - merges the contents of local master to Michael, shouldn't overwrite any work done on the local Michael  

*make sure that the local master branch is updated by changing to the master branch and running git pull or the update from source control function*    

`Merge master Zac` - merges the contents of local master to Zac

Currently manual merging into master is needed to update the master branch with the most up to date content from each branch - this can be done by creating a pull request on Github  

`Pull from Michael` - pulls remote changes from the Michael branch into the local Michael branch  
`Pull from Zac` - same as above but for remote and local Zac branches  
`Discard changes` - removes any untracked (uncommited) changes that were made in the branch  
