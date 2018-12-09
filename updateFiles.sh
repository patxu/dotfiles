#!/bin/bash

#arg 1 is the path to the directory of the files
#arg 2 is an array of file names
#arg 3 is the path to the directory IN workspace_settings
checkFiles(){
  fileDir=$1
  files=$2
  saveDir=$3
  for file in ${files[@]}; do
    diff $saveDir$file $fileDir$file
    if [ $? == 1 ]; then
      echo
      echo diff in $file
      echo 'press <enter> to copy or any other key to continue'
      read -s -n 1 input
      if [[ $input == "" ]]; then
        cp $fileDir$file $saveDir
      fi
    else
      echo no diff in $file
    fi
  done
}

#hammerspoon config
echo
echo Hammerspoon config files
fileDir=~/.hammerspoon/
saveDir=hammerspoon/
files=(init.lua)
checkFiles $fileDir $files $saveDir

#bash configs
echo
echo Bash config files
fileDir=~/
saveDir=bash/login/
files=(.bash_profile .bash_aliases .bashrc)
checkFiles $fileDir $files $saveDir

#bash configs
echo
echo Vim config files
fileDir=~/
saveDir=vim/
files=(.vimrc)
checkFiles $fileDir $files $saveDir

echo
echo Done
