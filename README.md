# Tset
Teensy Setting IDE Tools

For Windows - a Batch file to create another local sketch folder Batch file that will run the Arduino IDE build system.  Using SublimeText it has a BUILD system that will execute this batch file, it can also be run from Windows command line - or perhaps your editor can run it as well.

** included TD 1.47 boards.txt modified to function for Teensy 4.0, other ARM Teensy models need no change.
** add these two menu lines {they do nothing but allow this to work}::
**[about line #87 after :: #teensy40.menu.usb.disable.build.usbtype=USB_DISABLED]

* teensy40.menu.speed.600=600 MHz
* teensy40.menu.speed.600.build.fcpu=600000000


This is an extention of work by Frank Boesing [https://github.com/FrankBoesing]  - that actually is the Batch file that runs the Arduino Builder outside the IDE. 

Install a supported Arduino IDE {tested 1.8.9} and TeensyDuino {tested 1.47} combination - and TyCommander by Koromix [ https://github.com/Koromix/tytools ].

Also by FrankB is 'imxrt-size.exe' for Teensy 4.0 that is REM'd out in Tset.Cmd2 as it is T_4 specific and may not be updated to work fully as it collects segment size allocation of the built sketch memory allocation for the T_4.

The Tset.cmd file asks questions to specify the Teensy Board, MCU Speed, Compile Optimization level and USB type. Then it asks to approve or restart the selection if a wrong choice was made.  It also allows creating a subfolder based on Teensy Model to hold the file so the same build batch file can be created for run any of the T_LC, T_3.2/3.2, T_3.5, T_3.6 or T_4.0.

TO USE :: Put the files from the repository in a known folder.
Run Tset.cmd ( must include extention .cmd! ) from the Sketch folder where the INO is stored for IDE usage.  It can run from within your IDE or from CMD line or Explorer window.

NOTE: You must edit Tset.cmd1 to have proper folder paths to your local system. And it you aren't an English keyboard user make an edit to Tset.cmd2 from the specified: keys=en-us.

Other note: Nothing stops making a bad combination - like asking for a 256 MHZ T_3.5 - so that would cause a build to fail.

Given that this is Teensy specific it started here with FrankB's posted batch file to run the Arduino IDE's builder in a shell: https://forum.pjrc.com/threads/27825-Teensy-Qt?p=190940&viewfull=1#post190940

The addition here is the batch file with prompts for the Teensy IDE settings being programmatically merged into the initial batch file that would require hand editing of the numerous options for Teensy Model, MCU Speed, Optimization level and one of the many USB options available.  This was posted on the PJRC forum in the context of use with SublimeText - more setails for setup below.

That links to the updated version allowing the batch file to be placed in the specific Teensy Model folder to allow sending the same sketch to be sent to other models and only set it up once per model, the Compile.cmd must be run from that directory.

Added 'open_new.cmd' [Must edit the specified sketchbook(sbook) and Tset home directory (srcdir)] option to create the IDE type Sketch in same name folder with a base 'new_ino.ino' sketch, prompts for selecting subfolder in sketchbook directory, and offers to run Tset to create Compile.cmd.

Works on TeensyDuino 1.47 T4 [with beta TyComm] with custom edits to boards.txt

This works perfectly in SublimeText as a " Tools / Build System " to setup:: From Sublime Menu:: Tools/ Build System/ New build system … https://forum.pjrc.com/threads/38391-Use-Sublime-Text-as-an-Arduino-IDE-replacement?p=193093&viewfull=1#post193093 is how I started. That gives a way to create the file I have on github [ https://github.com/Defragster/Tset/blob/master/SublimeText.txt ]. You can then copy the contents into it and save. [the %appdata% path there would let you manually create and save the named file and I suspect it will get picked up]. Then Under: Tools/ Build System I see ‘Teensy’ [as I named it] that I selected as the build system and that triggers that with Ctrl+Shift+B to select the variation and Ctrl+B or F7 to run the last used variation. Other Notes:: refer to the post:: https://forum.pjrc.com/threads/38391-Use-Sublime-Text-as-an-Arduino-IDE-replacement?p=193136&viewfull=1#post193136

* This works for my use using SublimeText on Window 10 - hopefully yours too - if not please make an ISSUE

* Teensy4 use only - imxrt_size pulled from https://github.com/KurtE/imxrt-size : uncomment in TSet.cmd2 to use
