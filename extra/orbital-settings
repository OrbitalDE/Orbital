#!/usr/bin/python3

# Imports

import tkinter as tk
import os
from os import *

# Tkinter window 

window = tk.Tk(
    className=" Orbital Settings Manager"
)
window.configure(bg="white")

# Button commands

def cmdKeybinds():
    os.system("firefox https://orbitalde.github.io/Keybinds")

def cmdAudioSettings():
    os.system("pavucontrol")

def cmdGtkTheming():
    os.system("lxappearance")

def cmdNetworkManager():
    os.system("terminator -e nmtui")

# Graphical elements 

title = tk.Label(
    text="Orbital Settings",
    font=('Ubuntu', 32),
    bg="white"
    )

keybinds = tk.Button(
    text="Keybinds",
    bg="white",
    font=('Ubuntu', 16),
    command=cmdKeybinds
)

audio = tk.Button(
    text="Audio Settings",
    bg="white",
    font=('Ubuntu', 16),
    command=cmdAudioSettings
)

gtk = tk.Button(
    text="GTK Theming",
    bg="white",
    font=('Ubuntu', 16),
    command=cmdGtkTheming
)

nwm = tk.Button(
    text="Network Manager",
    bg="white",
    font=('Ubuntu', 16),
    command=cmdNetworkManager
)

# Display elements

title.pack()
keybinds.pack(side=tk.LEFT)
audio.pack(side=tk.LEFT)
gtk.pack(side=tk.LEFT)
nwm.pack(side=tk.LEFT)

# Show window

window.mainloop()