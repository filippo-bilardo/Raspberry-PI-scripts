git config --global user.name "filippo-bilardo"
git config --global user.email "filippo.bilardo@tiscali.it"

############################################################################
# Creating a New Repository
############################################################################
# Initializing a Repository in an Existing Directory
git init

# Add file to repository
echo "..." >> README.md
echo "..." >> LICENSE
#git add README.md
#git add LICENSE
git add .  #aggiunge tutti i file

#Checking the Status of Your Files
git status

# Committing Your Changes
git commit -m "first commit"

#  push an existing repository from the command line
git remote add origin https://github.com/filippo-bilardo/ARM_PROJECTS_WS.git
git push -u origin master

############################################################################
# aggiornamento di un repository
############################################################################
git status
git add .
git commit -a -m "Version 1.01"
git push origin master

############################################################################

git add *.*
git add LICENSE


# To remove a file from Git, you have to remove it from your tracked files (more accurately, remove it from your staging area) and then commit. 
# The git rm command does that, and also removes the file from your working directory so you don’t see it as an untracked file the next time around.
# If you simply remove the file from your working directory, it shows up under the “Changed but not updated” (that is, unstaged) area of your git status output:
#rm PROJECTS.md

# Committing Your Changes


# To see what you’ve changed but not yet staged, type git diff with no other arguments
# .gitignore -> file contenente i file da ignorare

#ARM_PROJECTS_CCS_WS


# create a new repository on the command line
echo # ARM_PROJECTS_WS >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/filippo-bilardo/ARM_PROJECTS_WS.git
git push -u origin master

#  push an existing repository from the command line
git remote add origin https://github.com/filippo-bilardo/ARM_PROJECTS_WS.git
git push -u origin master

# Aggiunge i file ad un repository esistente
git push origin master

