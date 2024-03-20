from libqtile.lazy import lazy
from libqtile.config import Key


mod = "mod1"  # mod4 -> supper

apps = {
    "myLauncher": "rofi -show drun",
    "myFileBrowser": "nemo",
    "myBrowser": "firefox",
    "myPowerMenu": "sh -c ~/.config/rofi/scripts/power",
    "myDisplay": "sh -c ~/.config/rofi/scripts/display",
    "myWallpaper": "sh -c ~/.config/rofi/scripts/wallpaper",
    "myApps": "sh -c ~/.config/rofi/scripts/app",
    "myTerminal": "kitty",
    "myScreenshot": "flameshot gui",
    "myNotes": "obsidian",
    "myColorPick": "gpick",
    # web apps
    "myAI": "chromium --app=https://chat.openai.com",
    "myCalender": "chromium --app=https://calendar.google.com",
}


keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key(
        [mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"
    ),
    Key(
        [mod, "shift"],
        "l",
        lazy.layout.shuffle_right(),
        desc="Move window to the right",
    ),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key(
        [mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"
    ),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    Key([mod], "z", lazy.hide_show_bar(), desc="Toggle visibility of Bar"),
    Key([mod], "g", lazy.window.toggle_fullscreen(), desc="Enter full screen mode"),
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    # Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    # Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    

    # My changes
    Key([mod],
        "r",
        lazy.spawn(apps.get("myLauncher")),
        desc="Launches Rofi"
        ),
    Key([mod, "control"],
        "p",
        lazy.spawn(apps.get("myWallpaper")),
        desc="Launches Rofi Wallpaper"
        ),
    Key([mod],
        "x",
        lazy.spawn(apps.get("myApps")),
        desc="Launches my Apps"
        ),
    Key(
        [mod],
        "Return",
        lazy.group["3"].toscreen(toggle=False),
        lazy.spawn(apps.get("myTerminal")),
        desc="Launch terminal",
    ),
    Key([mod],
        "e",
        lazy.spawn(apps.get("myFileBrowser")),
        desc="Launches Nemo"
        ),
    Key(
        [mod],
        "b",
        lazy.group["1"].toscreen(toggle=False),
        lazy.spawn(apps.get("myBrowser")),
        desc="Launches Firefox",
    ),
    Key(
        [mod, "control"],
        "x",
        lazy.spawn(apps.get("myPowerMenu")),
        desc="Launches rofi-power-menu",
    ),
    Key([mod],
        "d",
        lazy.spawn(apps.get("myDisplay")),
        desc="Launches rofi-power-menu"
        ),
    Key([mod],
        "s",
        lazy.spawn(apps.get("myScreenshot")),
        desc="Launches flameshot"
        ),
    Key([mod],
        "p",
        lazy.spawn(apps.get("myColorPick")),
        desc="Launches gpick"
        ),
    Key(
        [mod],
        "o",
        lazy.group["5"].toscreen(toggle=False),
        lazy.spawn(apps.get("myNotes")),
        desc="Launches Obsidan",
    ),
    Key(
        [mod],
        "a",
        lazy.group["6"].toscreen(toggle=False),
        lazy.spawn(apps.get("myAI")),
        desc="Launches ChatGPT",
    ),
    Key(
        [mod],
        "c",
        lazy.group["7"].toscreen(toggle=False),
        lazy.spawn(apps.get("myCalender")),
        desc="Launches Google calender",
    ),
    # Key([], "XF86AudioRaiseVolume", lazy.spwan("pactl -- set-sink-volume 0 +10%"), desc="Increase Vol."),
    # Key([], "XF86AudioRaiseVolume", lazy.spwan("pactl -- set-sink-volume 0 -10%"), desc="Decrease Vol."),
    # retile a floating window
    Key(
        [mod],
        "m",
        lazy.window.toggle_floating(),
        desc="Toggle floating",
    ),
]
