#!/usr/bin/env bash

set -e

pushd $HOME/.config/systemd/user/

systemctl mask plasma-kwin_x11.service --user
systemctl enable plasma-i3 --user

popd

echo "# Plasma compatibility improvements" >> $HOME/.config/i3/config
echo "for_window [window_role=\"pop-up\"] floating enable" >> $HOME/.config/i3/config
echo "for_window [window_role=\"task_dialog\"] floating enable" >> $HOME/.config/i3/config
echo "" >> $HOME/.config/i3/config
echo "for_window [class=\"yakuake\"] floating enable" >> $HOME/.config/i3/config
echo "for_window [class=\"systemsettings\"] floating enable" >> $HOME/.config/i3/config
echo "for_window [class=\"plasmashell\"] floating enable;" >> $HOME/.config/i3/config
echo "for_window [class=\"Plasma\"] floating enable; border none" >> $HOME/.config/i3/config
echo "for_window [title=\"plasma-desktop\"] floating enable; border none" >> $HOME/.config/i3/config
echo "for_window [title=\"win7\"] floating enable; border none" >> $HOME/.config/i3/config
echo "for_window [class=\"krunner\"] floating enable; border none" >> $HOME/.config/i3/config
echo "for_window [class=\"Kmix\"] floating enable; border none" >> $HOME/.config/i3/config
echo "for_window [class=\"Klipper\"] floating enable; border none" >> $HOME/.config/i3/config
echo "for_window [class=\"Plasmoidviewer\"] floating enable; border none" >> $HOME/.config/i3/config
echo "for_window [class=\"(?i)*nextcloud*\"] floating disable" >> $HOME/.config/i3/config
echo "for_window [class=\"plasmashell\" window_type=\"notification\"] border none, move position 70 ppt 81 ppt" >> $HOME/.config/i3/config
echo "no_focus [class=\"plasmashell\" window_type=\"notification\"]" >> $HOME/.config/i3/config
echo "for_window [title=\"Desktop @ QRect.*\"] kill; floating enable; border none" >> $HOME/.config/i3/config
