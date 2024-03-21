#!/bin/zsh
echo "initial commit" >> commit.txt
git add .
git commit -m "r0"

git branch dev
echo "r1" >> commit.txt
git add .
git commit -m "r1"

echo "create tests branch" >> commit.txt
git commit -m "r2"

git branch test
echo "TEST1" >> commit.txt
git commit -m "r3"

git checkout dev
echo "fix1" >> commit.txt
git commit -m "r4"

git checkout test
echo "TEST2" >> commit.txt
git commit -m "r5"

git checkout dev
echo "fix2" >> commit.txt
git commit -m "r6"

echo "fix2.2" >> commit.txt
git commit -m "r7"

git checkout test
echo "TEST3" >> commit.txt
git commit -m "r8"

echo "TEST4" >> commit.txt
git commit -m "r9"

git checkout dev
echo "fix3" >> commit.txt
git commit -m "r10"

git checkout test
echo "TEST5" >> commit.txt
git commit -m "r11"

git checkout dev
echo "fix4" >> commit.txt
git commit -m "r12"

git checkout test
git merge dev

git checkout main
git merge test

git log --graph --decorate --all
