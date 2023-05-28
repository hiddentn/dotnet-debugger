#!/bin/sh

# This script captures a dotTrace timeline for a specified process

# Set the default snapshots directory if SNAPSHOTS_DIR is not set
[ -z "${SNAPSHOTS_DIR}" ] && snapshots_dir='/tmp/snapshots' || snapshots_dir=${SNAPSHOTS_DIR}

# Set the default dottrace snapshots directory if DOTTRACE_SNAPSHOTS_DIR is not set
[ -z "${DOTTRACE_SNAPSHOTS_DIR}" ] && dottrace_snapshots_dir='/tmp/snapshots/dottrace' || dottrace_snapshots_dir=${DOTTRACE_SNAPSHOTS_DIR}

# Create a folder name using the current timestamp
folder_name="dottrace_snapshot_timeline_$(date +%F_%H-%M-%S)"

# Create the full folder path using the dottrace snapshots directory and folder name
folder_path="$dottrace_snapshots_dir/$folder_name"
mkdir -p $folder_path

# Create the full save path for the dottrace timeline file
save_to_fullpath="$folder_path/timeline.dtt"


# Define a function to handle the SIGINT signal
interrupt_handler() {
  echo "Command Done, Continuing.."
}

trap interrupt_handler SIGINT
(dottrace attach $1 --save-to=$save_to_fullpath < /dev/tty)

# Zip the output folder
zip -r "$folder_path.zip" "$folder_path"

# Print some information to the user
echo "Process ID: $1"
echo "Output folder: $folder_path.zip"