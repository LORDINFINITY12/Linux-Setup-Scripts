#!/bin/bash

# Set the path to your ambient music file
music_file="/mount/drive1/Music/Lofi/Tollan_Kim-Lofi.flac"

cvlc --loop --one-instance --playlist-enqueue --gain 0.3 "$music_file" &
