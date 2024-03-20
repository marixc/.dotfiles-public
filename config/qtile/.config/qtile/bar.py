from libqtile import bar, widget
from libqtile.config import Screen, Group
from colors import color

# widget default are found in config.py

groups = [
    Group("1", label="1"),
    Group("2", label="2"),
    Group("3", label="3"),
    Group("4", label="4"),
    Group("5", label="5"),
    Group("6", label="6"),
    Group("7", label="7"),
    Group("8", label="8"),
    Group("9", label="9"),
]


screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    this_current_screen_border=color.get("highlight_block"),
                    background=color.get("background"),
                    inactive=color.get("inactive_color"),
                    active=color.get("active_color"),
                    highlight_method="block",
                    block_highlight_text_color=color.get("background"),
                    rounded=True,
                    hide_unused=True,
                    disable_drag=True,
                ),
                widget.Spacer(
                    length=10,
                    background=color.get("background"),
                ),
                widget.TextBox(
                    fmt="[]=",
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                ),
                widget.WindowName(
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                    fontsize=10,
                ),
                widget.Spacer(
                    length=10,
                    background=color.get("background"),
                ),
                widget.TextBox(
                    fmt="Mem:",
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                ),
                widget.Memory(
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                    measure_mem="G",
                    format="{MemUsed:.1f}{mm}",
                    update_interval=5,
                ),
                widget.Spacer(
                    length=10,
                    background=color.get("background"),
                ),
                widget.TextBox(
                    fmt="Bat:",
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                ),
                widget.Battery(
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                    format="{percent:2.0%}",
                ),
                widget.Spacer(
                    length=10,
                    background=color.get("background"),
                ),
                widget.TextBox(
                    fmt="Vol:",
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                ),
                widget.Volume(
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                ),
                widget.Spacer(
                    length=10,
                    background=color.get("background"),
                ),
                widget.Clock(
                    background=color.get("background"),
                    foreground=color.get("foreground"),
                    format="%Y-%m-%d %I:%M %p",
                ),
                widget.Spacer(
                    length=1,
                    background=color.get("background"),
                ),
                widget.Systray(
                    background=color.get("background"),
                    icon_size=16,
                ),
            ],
            18,  # 24 default
        ),
    ),
]
