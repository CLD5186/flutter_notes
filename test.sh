#!/bin/sh
# 先进行一层遍历
# 需要判断两种情况

rm -rf _sidebar.md

filelist=`ls`
for file in $filelist
do 
  if [ -d "$file" ]
  then
    # 下面是文件
    echo '- ['$file']('$file'/README.md)' >> _sidebar.md
    for subfile in $file/*
    do
      if [ -d "$subfile" ]
      then
        echo '  - ['${subfile##*/}']('$subfile'/README.md)' >> _sidebar.md
        for subfile2 in $subfile/*
        do
          if [ -f "$subfile2" ]
          then
            name=${subfile2##*/}
            if [ $name != "README.md" ]
            then
              echo '    - ['${name%%.*}']('$subfile2')' >> _sidebar.md
            fi
          fi
        done
      fi
    done
  fi
done
