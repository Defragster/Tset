# Tset
Teensy Setting IDE Tools

For Windows - a Batch file to create another local sketch folder Batch file that will run the Arduino IDE build system.

This is an extention of work by Frank Boesing - that actually is the Batch file that runs the Arduino Builder outside the IDE. Install a supported Arduino IDE and TeensyDuino combination - and TyCommander by Koromix.

The Tset.cmd file asks 4 questions to specify the Teensy Board, MCU Speed, Compile Optimization level and USB type. Then is aks one more question to approve or restart the selection if a wrong choice was made.  It also allows creating a subfolder based on Teensy Model to hold the file so the same build batch file can be created for run any of the T_LC, T_3.2/3.2, T_3.5 or T_3.6.

TO USE :: Put the files from the repository in a known folder.
Run Tset.cmd ( must include extention .cmd! ) from the Sketch folder where the INO is stored for IDE usage.  It can run from within your IDE or from CMD line or Explorer window.
