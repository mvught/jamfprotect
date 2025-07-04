#!/bin/zsh --no-rcs
# This Extension Attribute reports if files exist in the Jamf Protect quarantine directory.

#Explanation:
#setopt NULL_GLOB makes unmatched globs return an empty list instead of an error.
#Now, if the quarantine folder is empty or missing files, ${#QUARANTINE_FILES} will be zero, so it echoes “No.”
setopt NULL_GLOB

QUARANTINE_FILES=(/Library/Application\ Support/JamfProtect/Quarantine/*)

if [[ ${#QUARANTINE_FILES} -eq 0 ]]; then
    echo "<result>No</result>"
else
    echo "<result>Yes</result>"
fi
