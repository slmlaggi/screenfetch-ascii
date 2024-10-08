# screenfetch-ascii
Wrote a bash script to append screenfetch info line by line to ascii art in the shell.

[Usage instructions](#usage-instructions) below if you want to skip me yapping about why I made this.

There's something about this that just feels.. comforting.
![image](https://github.com/user-attachments/assets/4ec2758b-6569-48d5-ab60-8f2ce9712a95)

---
# But... why this script?
I found out that `screenfetch -a ascii.sh` only works if the ascii art is small enough in size, which is frustrating because the lack of detail makes the art basically unviewable in my case.
So I just doubled down and wrote this script using about an hour of my time. It is my first time writing a bash script literally from scratch so if there are any errors/improvements feel free to send a pull request.

---
# USAGE INSTRUCTIONS
1. Download the raw file of `fetch.sh` and save it in your home directory.
2. Make sure you have your ascii art in the same directory as a `txt` file. You can add custom colours (like I did in the `ascii.txt`) using bash colour coding. If you want to save some time generating the art, you can run the command `jp2a path/to/image --colours --width=N output=ascii.txt` (Change N to however wide, in number of characters, you want the art to be), which generates a coloured ascii art and stores it in the file `ascii.txt` in the same directory.
3. Open up `fetch.sh` in your preferred code editor. If you have changed the name/directory of your ascii file, replace `ascii.txt` on line 12 with the directory of your file.
4. The infoFetch program used is default to [Screenfetch](https://github.com/KittyKatt/screenFetch), an alternative to Neofetch. If you want to use other programs to generate info or change the screenfetch tags, feel free to do so by editing the content of the `screenfetch_output` variable on line 20.
5. **OPTIONAL**: You may uncomment out lines 17, 27, and 28 if you want to add a line that displays the current song that you're listening to the info generated. Use whatever program to fetch the music title, but [Musicprofiler](https://ongezell.com/software/musicidentifier/musicprofilerv1.7z) works best for me.
6. Save `fetch.sh`. Run `chmod +x fetch.sh` to make sure you have run permissions. Open up `~/.bashrc` and add `./fetch.sh` wherever you want. Remember to remove any screenfetch or neofetch commands if you're using them.
7. Voila! You're done.

---
# UPDATE
Ok.. this sounds pretty dumb but screenfetch was too slow even after configuring it for performance. Now I've switched to using fastfetch and the uwuntu logo so I no longer need this script. :/
