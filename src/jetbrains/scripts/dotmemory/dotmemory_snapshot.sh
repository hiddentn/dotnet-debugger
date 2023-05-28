#!/bin/sh

# This script captures a dotMemory snapshot for a specified process

# Set the default snapshots directory if SNAPSHOTS_DIR is not set
[ -z "${SNAPSHOTS_DIR}" ] && snapshots_dir='/tmp/snapshots' || snapshots_dir=${SNAPSHOTS_DIR}

# Set the default dotMemory snapshots directory if DOTMEMORY_SNAPSHOTS_DIR is not set
[ -z "${DOTMEMORY_SNAPSHOTS_DIR}" ] && dotmemory_snapshots_dir='/tmp/snapshots/dotmemory' || dotmemory_snapshots_dir=${DOTMEMORY_SNAPSHOTS_DIR}

# Create a folder name using the current timestamp
folder_name="dotmemory_snapshot_$(date +%F_%H-%M-%S)"

# Create the full folder path using the dotMemory snapshots directory and folder name
folder_path="$dotmemory_snapshots_dir/$folder_name"
mkdir -p $folder_path

# Create the full save path for the dotMemory snapshot file
save_to_fullpath="$folder_path/snapshot.dmw"

# Define a function to handle the SIGINT signal
interrupt_handler() {
  echo "Command Done, Continuing.."
}

trap interrupt_handler SIGINT

# Start dotMemory process and capture a snapshot for the specified process
(dotmemory get-snapshot $1 -o --save-to-file=$save_to_fullpath < /dev/tty)




# Zip the output folder
zip -r "$folder_path.zip" "$folder_path"

# Print some information to the user
echo "Process ID: $1"
echo "Output folder: $folder_path.zip"
