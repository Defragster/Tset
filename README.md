# Tset
Teensy Setting IDE Tools

For Windows - a Batch file to create another local sketch folder Batch file that will run the Arduino IDE build system.

** TD 1.46 beta 11 boards.txt modified to function for Teensy Beta T4 #1 and #2.
* change to this "4b1" and "4b2":: teensy4b[1,2].build.board=TEENSY4b[1,2] from teensy4b[1,2].build.board=TEENSY40
* w/1.46b11 and 2nd T4 beta:: teensy4b1.build.board=TEENSY4b1 and teensy4b2.build.board=TEENSY4b2

** add this menu for both teensy4b1.menu and teensy4b2.menu after '...disable.build.usbtype=USB_DISABLED'::
* teensy4b2.menu.speed.600=600 MHz
* teensy4b2.menu.speed.600.build.fcpu=600000000
*
* teensy4b1.menu.speed.600=600 MHz
* teensy4b1.menu.speed.600.build.fcpu=600000000

This is an extention of work by Frank Boesing [https://github.com/FrankBoesing]  - that actually is the Batch file that runs the Arduino Builder outside the IDE. Install a supported Arduino IDE and TeensyDuino combination - and TyCommander by Koromix [ https://github.com/Koromix/tytools ].

The Tset.cmd file asks questions to specify the Teensy Board, MCU Speed, Compile Optimization level and USB type. Then it asks to approve or restart the selection if a wrong choice was made.  It also allows creating a subfolder based on Teensy Model to hold the file so the same build batch file can be created for run any of the T_LC, T_3.2/3.2, T_3.5 or T_3.6.

TO USE :: Put the files from the repository in a known folder.
Run Tset.cmd ( must include extention .cmd! ) from the Sketch folder where the INO is stored for IDE usage.  It can run from within your IDE or from CMD line or Explorer window.

NOTE: You must edit Tset.cmd1 to have proper folder paths to your local system. And it you aren't an English keyboard user make an edit to Tset.cmd2 from the specified: keys=en-us.

Other note: Nothing stops making a bad combination - like asking for a 256 MHZ T_3.5 - so that would cause a build to fail.

Given that this is Teensy specific it started here with FrankB's posted batch file to run the Arduino IDE's builder in a shell: https://forum.pjrc.com/threads/27825-Teensy-Qt?p=190940&viewfull=1#post190940

The addition here is the batch file with prompts for the Teensy IDE settings being programmatically merged into the initial batch file that would require hand editing of the numerous options for Teensy Model, MCU Speed, Optimization level and one of the many USB options available.  This was posted on the forum here in the context of use with SublimeText - more setails for setup below.

That links to the updated version allowing the batch file to be placed in the specific Teensy Model folder to allow sending the same sketch to be sent to other models and only set it up once per model, the Compile.cmd must be run from that directory.

Added 'open_new.cmd' [Must edit the specified sketchbook(sbook) and Tset home directory (srcdir)] option to create the IDE type Sketch in same name folder with a base 'new_ino.ino' sketch, prompts for selecting subfolder in sketchbook directory, and offers to run Tset to create Compile.cmd.

Works on Beta_9 T4 [with beta Tycomm] with custom edits to boards.txt

This works perfectly in SublimeText as a " Tools / Build System " to setup::
From Sublime Menu:: Tools/ Build System/ New build system … https://forum.pjrc.com/threads/38391-Use-Sublime-Text-as-an-Arduino-IDE-replacement?p=193093&viewfull=1#post193093 is how I started.  That gives a way to create the file I have on github [ https://github.com/Defragster/Tset/blob/master/SublimeText.txt ]. You can then copy the contents into it and save.  [the %appdata% path there would let you manually create and save the named file and I suspect it will get picked up].  Then Under: Tools/ Build System I see ‘Teensy’ [as I named it] that I selected as the build system and that triggers that with Ctrl+Shift+B to select the variation and Ctrl+B or F7 to run the last used variation.  Other Notes:: refer to the post:: https://forum.pjrc.com/threads/38391-Use-Sublime-Text-as-an-Arduino-IDE-replacement?p=193136&viewfull=1#post193136
