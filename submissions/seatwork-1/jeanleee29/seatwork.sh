
#!/usr/bin/env bash

# Seatwork 1 - Linux CLI Fundamentals

# PART 1: Navigation and File Operations

echo "===== PART 1 ====="

pwd
ls -la
mkdir practice_cli
cd practice_cli
touch notes.txt
echo "Hello Linux" > notes.txt
echo "Learning CLI is fun!" >> notes.txt
cat notes.txt

# PART 2: File and Directory Management

echo "===== PART 2 ====="

cp notes.txt backup_notes.txt
mv backup_notes.txt notes_backup.txt
mkdir docs
mv notes_backup.txt docs/

# PART 3: Permissions

echo "===== PART 3 ====="

ls -l notes.txt

chmod u+x notes.txt
chmod o-w notes.txt

# Ensure owner execute permission is set
chmod 744 notes.txt

# Checkpoint
ls -l notes.txt

# PART 4: Process and System Information

echo "===== PART 4 ====="

whoami
date
ps aux

pgrep bash 2>/dev/null || ps | awk '$NF ~ /bash/ {print $1; exit}'
# PART 5: Cleanup

echo "===== PART 5 ====="

cd ..
rm -r practice_cli

echo "===== SEATWORK 1 COMPLETED ====="