#!/usr/bin/env bash

set -e

ORIGINALDIR=$(pwd)
cd $HOME/.config/systemd/user/

systemctl mask plasma-kwin_x11.service --user
systemctl enable plasma-i3 --user

echo "# Plasma compatibility improvements" > ./config/i3/config
echo "for_window [window_role="pop-up"] floating enable" > ./config/i3/config
echo "for_window [window_role="task_dialog"] floating enable" > ./config/i3/config
echo "" > ./config/i3/config
echo "for_window [class="yakuake"] floating enable" > ./config/i3/config
echo "for_window [class="systemsettings"] floating enable" > ./config/i3/config
echo "for_window [class="plasmashell"] floating enable;" > ./config/i3/config
echo "for_window [class="Plasma"] floating enable; border none" > ./config/i3/config
echo "for_window [title="plasma-desktop"] floating enable; border none" > ./config/i3/config
echo "for_window [title="win7"] floating enable; border none" > ./config/i3/config
echo "for_window [class="krunner"] floating enable; border none" > ./config/i3/config
echo "for_window [class="Kmix"] floating enable; border none" > ./config/i3/config
echo "for_window [class="Klipper"] floating enable; border none" > ./config/i3/config
echo "for_window [class="Plasmoidviewer"] floating enable; border none" > ./config/i3/config
echo "for_window [class="(?i)*nextcloud*"] floating disable" > ./config/i3/config
echo "for_window [class="plasmashell" window_type="notification"] border none, move position 70 ppt 81 ppt" > ./config/i3/config
echo "no_focus [class="plasmashell" window_type="notification"]" > ./config/i3/config
echo "for_window [title="Desktop @ QRect.*"] kill; floating enable; border none" > ./config/i3/config
