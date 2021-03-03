#!/bin/bash
touch file1 file2 file3
tar -cvf backup file1 file2 file3
dump -a backup
