#!/bin/sh
if [ $# -ne 4 ]; then
    echo 'btrfs-clean-auto-snapshots <snapshot-directory> <name> <type> <max-snapshots>'
    exit 1
fi

snapshot_dir="$1"
name="$2"
type="$3"
max_snapshots="$4"

/sbin/btrfs subvolume list -s -r $snapshot_dir | /usr/bin/cut -d ' ' -f 14 | /bin/grep -P "^${name}@auto-${type}-" | /usr/bin/sort --reverse | /usr/bin/tail --lines=+$(($max_snapshots + 1)) | sed -e "s|^|$snapshot_dir/|" | /usr/bin/xargs --no-run-if-empty -d '\n' /sbin/btrfs subvolume delete --commit-each
