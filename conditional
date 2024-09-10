#!/bin/bash

newcommand=htop

if command -v $newcommand
then 
   echo "Package installed. Running the package now."
else
   echo "Package not installed. Installing it now."
   sudo yum update && sudo yum install $newcommand
fi

$newcommand
