#!/bin/sh
mkdir git
cd git 
git init

git config --local user.name "red"
git config --local user.email "owner@gmail.com"
git checkout -b main
unzip -o ../commits/commit0.zip -d .
git add .
git commit -m "r0"

git config --local user.name "blue"
git config --local user.email "contributor@gmail.com"
git checkout -b dev
unzip -o ../commits/commit1.zip -d .
git add .              
git commit -m "r1"     

unzip -o ../commits/commit2.zip -d .
git add .              
git commit -m "r2"     

git config --local user.name "blue"
git config --local user.email "contributor@gmail.com"
git checkout -b test
unzip -o ../commits/commit3.zip -d .
git add .                                        
git commit -m "r3"  

git checkout dev
unzip -o ../commits/commit4.zip -d .
git add .                                        
git commit -m "r4"  

git checkout test
unzip -o ../commits/commit5.zip -d .
git add .                                        
git commit -m "r5" 

git checkout dev
unzip -o ../commits/commit6.zip -d .
git add .                                        
git commit -m "r6" 

unzip -o ../commits/commit7.zip -d .
git add .                                        
git commit -m "r7" 

git checkout test
unzip -o ../commits/commit8.zip -d .
git add .                                        
git commit -m "r8" 

unzip -o ../commits/commit9.zip -d .
git add .                                        
git commit -m "r9" 

git checkout dev
unzip -o ../commits/commit10.zip -d .
git add .                                        
git commit -m "r10" 

git checkout test
unzip -o ../commits/commit11.zip -d .
git add .                                        
git commit -m "r11" 

git checkout dev
unzip -o ../commits/commit12.zip -d .
git add .                                        
git commit -m "r12" 

git checkout test
git merge dev                       
git add .           
git commit -m "merge dev into test"      
unzip -o ../commits/commit13.zip -d .
git add .
git commit -m "r13"

git config --local user.name "red"
git config --local user.email "owner@gmail.com"
git checkout main
git merge test
git add .
git commit -m "merge test into main"      
unzip -o ../commits/commit14.zip -d .
git add .
git commit -m "r14"

git log --graph --pretty=oneline --abbrev-commit --all --decorate