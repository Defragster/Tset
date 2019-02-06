# Tset
Teensy Setting IDE Tools

For Windows - a Batch file to create another local sketch folder Batch file that will run the Arduino IDE build system.

** included beta 8 boards.txt modified to function. That has US_ENGLISH hardcoded to work around build issue can be edited.
adds
* teensy4b.build.keylayout=US_ENGLISH

* teensy4b.menu.speed.600=600 MHz
* teensy4b.menu.speed.600.build.fcpu=600000000
* and change to teensy4b.build.board=TEENSY4b from teensy4b.build.board=TEENSY40

This is an extention of work by Frank Boesing [https://github.com/FrankBoesing]  - that actually is the Batch file that runs the Arduino Builder outside the IDE. Install a supported Arduino IDE and TeensyDuino combination - and TyCommander by Koromix [ https://github.com/Koromix/tytools ].

The Tset.cmd file asks 4 questions to specify the Teensy Board, MCU Speed, Compile Optimization level and USB type. Then is asks one more question to approve or restart the selection if a wrong choice was made.  It also allows creating a subfolder based on Teensy Model to hold the file so the same build batch file can be created for run any of the T_LC, T_3.2/3.2, T_3.5 or T_3.6.

TO USE :: Put the files from the repository in a known folder.
Run Tset.cmd ( must include extention .cmd! ) from the Sketch folder where the INO is stored for IDE usage.  It can run from within your IDE or from CMD line or Explorer window.

NOTE: You must edit Tset.cmd1 to have proper folder paths to your local system. And it you aren't an English keyboard user make an edit to Tset.cmd2 from the specified: keys=en-us.

Other note: Nothing stops making a bad combination - like asking for a 256 MHZ T_LC - so that would cause a build to fail. Note: T_LC menu options are only 24 and 48 now.

Given that this is Teensy specific it started here with FrankB's posted batch file to run the Arduino IDE's builder in a shell: https://forum.pjrc.com/threads/27825-Teensy-Qt?p=190940&viewfull=1#post190940

The addition here is the batch file with four prompts for the Teensy IDE settings being programmatically merged into the initial batch file that would require hand editing of the numerous options for Teensy Model, MCU Speed, Optimization level and one of the 21 USB options available.  This was posted on the forum here in the context of use with SublimeText to build and upload from within the editor: https://forum.pjrc.com/threads/38391-Use-Sublime-Text-as-an-Arduino-IDE-replacement?p=193136&viewfull=1#post193136

That links to the updated version allowing the batch file to be placed in the specific Teensy Model folder to allow sending the same sketch to be sent to other models and only set it up once.
