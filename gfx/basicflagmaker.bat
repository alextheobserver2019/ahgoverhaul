@echo off
set /p tag="Enter tag:"

if not exist flags mkdir flags
magick convert -verbose flag.tga -resize 82x52! flag1.tga
copy flag1.tga flags\%tag%.tga
del flag1.tga

if not exist flags\medium mkdir flags\medium
magick convert flag.tga -resize 41x26! flag2.tga
copy flag2.tga flags\medium\%tag%.tga
del flag2.tga

if not exist flags\small mkdir flags\small
magick convert flag.tga -resize 10x7! flag3.tga
copy flag3.tga flags\small\%tag%.tga
del flag3.tga