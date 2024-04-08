#!/bin/sh

mkdir svn
cd svn

svnadmin create svnrepo
svn mkdir -m "Create trunk directory" file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/trunk
svn mkdir -m "Create branches directory" file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches
svn mkdir -m "Create tags directory" file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/tags

svn checkout file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/trunk master
cd master
svn commit -m "init"
unzip -o ../../commits/commit0.zip -d .
svn add *
svn commit -m "r0" --username "red"

svn copy file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/trunk \
         file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev \
         -m "init copy"
svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev
unzip -o ../../commits/commit1.zip -d .
svn commit -m "r1" --username "blue"

unzip -o ../../commits/commit2.zip -d .
svn commit -m "r2" --username "blue"

svn copy file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev \
         file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/test \
         -m "r2-r3" --username "blue"
svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/test
unzip -o ../../commits/commit3.zip -d .
svn commit -m "r3" --username "blue"

svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/bralsvn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev
unzip -o ../../commits/commit4.zip -d .
svn commit -m "r4" --username "blue"

unzip -o ../../commits/commit5.zip -d .
svn commit -m "r5" --username "blue"

svn copy file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev \
         file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/testSecond \
         -m "r5-r6" --username "blue"
svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/testSecond
unzip -o ../../commits/commit6.zip -d .
svn commit -m "r6" --username "blue"

svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev
unzip -o ../../commits/commit7.zip -d .
svn commit -m "r7" --username "blue"

unzip -o ../../commits/commit8.zip -d .
svn commit -m "r8" --username "blue"

svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/testSecond
unzip -o ../../commits/commit9.zip -d .
svn commit -m "r9" --username "blue"

svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/test
svn merge file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/testSecond file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/test --username "blue"
svn commit -m "merge testSecond into test" --username "blue"
unzip -o ../../commits/commit10.zip -d .
svn commit -m "r10" --username "blue"

svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev
svn merge file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/test file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev --username "blue"
svn commit -m "merge test into dev" --username "blue"
unzip -o ../../commits/commit11.zip -d .
svn commit -m "r11" --username "blue"

unzip -o ../../commits/commit12.zip -d .
svn commit -m "r12" --username "blue"

unzip -o ../../commits/commit13.zip -d .
svn commit -m "r13" --username "blue"

svn switch file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/trunk
svn merge file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches/dev file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/trunk --username "red"
svn commit -m "merge dev into trunk" --username "red"
unzip -o ../../commits/commit14.zip -d .
svn commit -m "r14" --username "red"

svn checkout file:///Users/aleksandrbabushkin/ITMO/4th-semester/basics-of-software-eng/s4-bse-lab2/svn/svnrepo/branches