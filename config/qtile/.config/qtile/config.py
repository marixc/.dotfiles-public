from libqtile import layout
from libqtile.config import Click, Drag, DropDown, Key, Match, ScratchPad
from libqtile.lazy import lazy

# -----------------------------------------------------------------------------------
# custom imports
import os
import subprocess
from libqtile import hook

# personal modules
from colors import color
from bar import groups, screens
from keybindings import mod, apps, keys

# -----------------------------------------------------------------------------------

#  _  _     _       _
# | \| |___| |_ ___(_)
# | .` / _ \  _/ -_)_
# |_|\_\___/\__\___(_)
# When encountering problems please check the 'qtile.log' file under:
# ~/.local/share/qtile/qtile.log


#   ___
#  / __|_ _ ___ _  _ _ __ ___
# | (_ | '_/ _ \ || | '_ (_-<
#  \___|_| \___/\_,_| .__/__/
#                   |_|

for i in groups:
    keys.extend(
        [
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
        ]
    )


#  ___              _      _                  _
# / __| __ _ _ __ _| |_ __| |_  _ __  __ _ __| |
# \__ \/ _| '_/ _` |  _/ _| ' \| '_ \/ _` / _` |
# |___/\__|_| \__,_|\__\__|_||_| .__/\__,_\__,_|
#                              |_|

groups.append(
    ScratchPad(
        "scratchpad",
        [
            DropDown("term", "kitty", width=0.7, height=0.6, x=0.15, y=0.2, opacity=1),
            DropDown("file", "nemo", width=0.6, height=0.6, x=0.2, y=0.2, opacity=1),
        ],
    )
)

keys.extend(
    [
        Key([mod], "t", lazy.group["scratchpad"].dropdown_toggle("term")),
        Key([mod], "f", lazy.group["scratchpad"].dropdown_toggle("file")),
    ]
)

#  _                       _
# | |   __ _ _  _ ___ _  _| |_ ___
# | |__/ _` | || / _ \ || |  _(_-<
# |____\__,_|\_, \___/\_,_|\__/__/
#            |__/

layouts = [
    layout.Columns(
        border_focus_stack=["#d75f5f", "#8f3d3d"],
        border_width_focus=2,
        border_focus=color.get("window_border_focus"),
        border_normal=color.get("window_border_normal"),
        margin=3,
        border_on_single=False,
    ),
    layout.Max(
        border_width=0,
        border_focus=color.get("window_border_focus"),
        border_normal=color.get("window_border_normal"),
        margin=3,
        border_on_single=False,
    ),
    layout.Floating(
        border_width=2,
        border_focus=color.get("window_border_focus"),
        border_normal=color.get("window_border_normal"),
    ),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]


# __      ___    _          _
# \ \    / (_)__| |__ _ ___| |_ ___
#  \ \/\/ /| / _` / _` / -_)  _(_-<
#   \_/\_/ |_\__,_\__, \___|\__/__/
#                 |___/

widget_defaults = dict(
    font="JetBrains Mono",
    fontsize=12,
    padding=2,
)

extension_defaults = widget_defaults.copy()


#  __  __
# |  \/  |___ _  _ ___ ___
# | |\/| / _ \ || (_-</ -_)
# |_|  |_\___/\_,_/__/\___|

# Drag floating layouts.
mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()
    ),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    border_width=2,
    border_focus=color.get("window_border_focus"),
    border_normal=color.get("window_border_normal"),
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ],
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True


# --------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------

#    _       _          _            _
#   /_\ _  _| |_ ___ __| |_ __ _ _ _| |_
#  / _ \ || |  _/ _ (_-<  _/ _` | '_|  _|
# /_/ \_\_,_|\__\___/__/\__\__,_|_|  \__|


@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser("~/.config/qtile/autostart.sh")
    subprocess.Popen([home])


# --------------------------------------------------------------------------------------
# --------------------------------------------------------------------------------------


# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None
