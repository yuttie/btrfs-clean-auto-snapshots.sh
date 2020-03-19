# btrfs-clean-auto-snapshots.sh

Example:
```
*     *  *  *  *  /sbin/btrfs subvolume snapshot -r /your/subvol /snapshot/dir/subvol@auto-minute-$(date +\%Y-\%m-\%d-\%H\%M\%S);   /root/btrfs-clean-auto-snapshots.sh /snapshot/dir subvol minute  15
*/15  *  *  *  *  /sbin/btrfs subvolume snapshot -r /your/subvol /snapshot/dir/subvol@auto-quarter-$(date +\%Y-\%m-\%d-\%H\%M\%S);  /root/btrfs-clean-auto-snapshots.sh /snapshot/dir subvol quarter  4
0     *  *  *  *  /sbin/btrfs subvolume snapshot -r /your/subvol /snapshot/dir/subvol@auto-hour-$(date +\%Y-\%m-\%d-\%H\%M\%S);     /root/btrfs-clean-auto-snapshots.sh /snapshot/dir subvol hour    24
0     0  *  *  *  /sbin/btrfs subvolume snapshot -r /your/subvol /snapshot/dir/subvol@auto-day-$(date +\%Y-\%m-\%d-\%H\%M\%S);      /root/btrfs-clean-auto-snapshots.sh /snapshot/dir subvol day      7
0     0  *  *  0  /sbin/btrfs subvolume snapshot -r /your/subvol /snapshot/dir/subvol@auto-week-$(date +\%Y-\%m-\%d-\%H\%M\%S);     /root/btrfs-clean-auto-snapshots.sh /snapshot/dir subvol week     4
0     0  1  *  *  /sbin/btrfs subvolume snapshot -r /your/subvol /snapshot/dir/subvol@auto-month-$(date +\%Y-\%m-\%d-\%H\%M\%S);    /root/btrfs-clean-auto-snapshots.sh /snapshot/dir subvol month    3
```
