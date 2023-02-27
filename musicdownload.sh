#! /usr/bin/bash

import sys

echo "Welcome to a simple music downloader"
echo "This script, allows you to download a song of your choice, while simultaneously notifying you via ntfy when your song is done downloading."

echo "Instructions:"
echo "1. Give a name to your folder in which the song will be downloaded"
echo "2. Paste the link of the song or playlist that you want to download"
echo "3. Wait for your song or playlist to be downloaded"

echo "Folder name? Write below."

read foldername
mkdir $foldername
echo "Folder created."

cd $foldername

echo "Specify the artist and name of the song (will serve with downloaded song naming and possible lyrics fetching)"

echo "Artist?"
read artist

echo "Song name?"
read song

echo "Paste the link of the song or playlist that you want to download"
read link
yt-dlp -x --audio-format mp3 -o "$song.%(ext)s" $link

echo "Your song is downloaded! Notifying via ntfy,,,"
curl -H "Tags: cd"  -H "Title: Your song is downloaded!" -d "$artist - $song is now downloaded and ready to be played" ntfy.sh/idk

echo "Would you like to play your song and find the lyrics ? [y/n]"
read choice

if [ $choice = "y" ]
then
        lyr=$(lyrics -t $artist $song)
        curl -H "Tags: cd" -H "Title: Your song is being played, watch the lyrics below!" -d "$lyr" ntfy.sh/idk
        mpv $song.mp3

else
        echo "Thank you for using the script!"
fi
