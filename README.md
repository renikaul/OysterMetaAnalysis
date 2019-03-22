# How to use github for this project

You'll need to download git. See directions https://gist.github.com/derhuerst/1b15ff4652a867391f03

## Setting up a local repository (folder) on your MAC computer (only do first time)

1. open terminal and navigate to where you'd like the repository to exist on your computer. The can be done using the change directory command `cd` and then dragging the location from finder into the command line. 
2. execute the command `git clone https://github.com/renikaul/OysterMetaAnalysis.git` All git commands start with `git` just like python commands start with `py`. The command line will return a message and the repositiory should appear in the finder.  
3. Check to make sure the clone worked by changing directories into the OysterMetaAnalysis folder and then executing the command `git remote -v`. It should return 2 lines: 

origin	https://github.com/renikaul/OysterMetaAnalysis.git (fetch)

origin	https://github.com/renikaul/OysterMetaAnalysis.git (push)


## Daily Use

**At the beginning of the work session** always make sure your local copy of the repository is up to-date with the github version. From terminal:
`cd` into OysterMetaAnalysis directory 
`git pull --no-edit` 

**At the end of the work session update the files you've worked on github (ie. save to the cloud)**
1. Use `git status` to look at what files are different between your local files and github. 
2. Use `git add` [filenames]  to stage the files you'd like to push to github
3. Use `git commit -m 'informative message'` to label this version of the files. The informative message is normally like "added function X" or "Fixed bug z"
4. Use `git push origin master` to push local dir called origin to github master repo. If you refresh the github page your changes should show up within 10 seconds. 
