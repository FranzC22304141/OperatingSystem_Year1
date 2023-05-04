#!/bin/bash


# Function to display the menu
show_menu() {
    echo "---------------------------"
    echo " Welcome to the Main Menu"
    echo "---------------------------"
    echo "1. List files in current directory"
    echo "2. Show free disk space"
    echo "3. Show current path"
    echo "4. Show command history"
    echo "5. Recursively backup files from a specified directory"
    echo "6. Exit"
    echo "---------------------------"
}

# Function to list all files in the current directory
list_files() {
    echo "List of files in current directory:"
    ls -al
}

# Function to show free disk space
show_free_space() {
    echo "Free disk space:"
    df -h
}

# Function to show current path
show_current_path() {
    echo "Current path:"
    pwd
}

# Function to show command history
show_command_history() {
    echo "Command history:"
    history
}

# Function to recursively backup files from a specified directory and all its sub-directories
backup_files() {
    read -p "Enter the directory name to backup: " dir_name
    mkdir -p BackupFolder
    cp -R $dir_name BackupFolder
    echo "Backup completed."
    echo "List of files in BackupFolder:"
    ls -al BackupFolder
}

# Main program loop
while true
do
    show_menu
    read -p "Enter your choice: " choice
    case $choice in
        1) list_files ;;
        2) show_free_space ;;
        3) show_current_path ;;
        4) show_command_history ;;
        5) backup_files ;;
        6) exit 0 ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
done
