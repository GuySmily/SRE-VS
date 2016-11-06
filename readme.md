========================================================================
SRE-VS Project Overview
========================================================================
Visual Studio is the IDE personally preferred by the SRE Software Team lead.
Intellisense makes Visual Studio a pleasure to use, offering features such
as auto-complete, display of function parameters and object properties/methods,
and other helpful tools.

The downside to using Visual Studio for development is that the TTTech VCUs
were designed to use their own compiler/IDE, TASKING VX.  TASKING VX is based 
on Eclipse, and it uses an external compiler (Viper?) to build the binary file
(main.hex) that is flashed to the VCU.  Visual Studio was never intended to be
the IDE for developing software for TTTech controllers.  

This project was created to allow you to build/clean/rebuild code for SRE
from within Visual Studio.  It works by running a batch file in the SRE-2 folder,
which sets the working directory correctly and runs the VCU's make.exe therein.
This correctly runs the TASKING VX compiler and results in SRE code being
built as normal.

In order for this setup to work correctly, this project's folder (SRE-VS) 
must be placed in the same location as the SRE-2 folder (Environment\dev).

========================================================================
SETUP
========================================================================
To set up SRE-VS on a new development machine:
1. Get the VCU folder from the software team lead.
2. Clone SRE-2 from GitHub into VCU\Environment\dev
   - This will create a subfolder called SRE-2 inside of dev.
   - You do not need to create the SRE-2 subfolder ahead of time.  Just 
     select the dev folder.
   - If the SRE-2 folder already exists, you should delete it first so that
     you get the latest code from GitHub instead.
3. Clone SRE-VS from GitHub into VCU\Environment\dev (same parent folder).
4. Within SRE-VS\SRE-VS (subfolder with same name), run _linksource.bat
5. Open SRE-VS\SRE-VS.sln to start coding in Visual Studio!

The header files provided by TTControl (the TTTech VCU APIs) can be found
under the "External Dependences" filter (folder).

Our code is located in the "Source" and "Header Files" filters.

========================================================================
IMPORTANT: Creating new files / adding files from SRE-2 to Visual Studio
========================================================================
In exchange for the convenience of compiling (build / Ctrl+Shift+B) from within
Visual Studio, it becomes slightly harder to create new source files and to
add a new source file from SRE-2 into Visual Studio.

In Visual Studio's Solution Explorer, the Source "folder" (VS2015 calls it
a "filter") is not actually the SRE-2 code folder. This "filter" only shows 
files which have been manually selected ("included" in the project).

Click the "Show All Files" icon to see all files within the actual SRE-2 folder.
You can right click on missing files to include them in the Visual Studio
project.  This step is necessary in order for intellisense to work properly.

/////////////////////////////////////////////////////////////////////////////

