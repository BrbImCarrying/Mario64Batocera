# Render96ex Batocera launcher (x86_64)

This folder provides a Batocera launcher only.
It does not include the Render96ex executable or Nintendo game files.

## What you need

- Batocera running on x86_64 hardware, with its SDL2 and OpenGL runtime libraries.
- A Render96ex Linux x86_64 executable built from the project source. The launcher expects it beside `Render96ex.sh`, named exactly `sm64.us.f3dex2e`.
- Any optional Render96 model or texture packs you want to use.
- A legally obtained compatible US game ROM for the build and asset extraction process.

An ARM executable from an ARM download/package will not run on Batocera x86_64. Model and texture assets are data rather than executables, and can generally be used with an x86_64 build when installed in the locations specified by the Render96ex instructions.

## Build the x86_64 executable

Build on an x86_64 Linux computer. The resulting Linux executable is intended for Batocera x86_64; a Windows build or ARM Linux build is not suitable.

1. Follow the official [Render96ex Linux compilation guide](https://github.com/Render96/Render96ex/wiki/How-To-Compile-ENG-Linux) and check the [Render96ex README](https://github.com/Render96/Render96ex) for current project notes.
2. Install the guide's required build packages (`build-essential`, `libglew-dev`, and `libsdl2-dev`) using your Linux distribution's package manager.
3. Clone the Render96ex source as directed by the guide. In the source directory, place your legally obtained US ROM beside the `Makefile`, named `baserom.us.z64`, as required by the guide. If your ROM is `.n64` or has a different byte order, follow the guide's ROM format/hash guidance; changing the filename extension alone does not convert it.
4. Run `make` as described in the guide. Allow the build to extract the game assets and finish compiling. Optional model and texture packs are handled separately; use the project instructions for the matching pack and build version.
5. Locate the generated Linux x86_64 game executable in the build output. Copy it into this launcher folder, rename it `sm64.us.f3dex2e`, and make sure it is executable. If the build output does not contain that exact executable, consult the guide/build output rather than renaming an ARM or Windows binary.
6. Keep all generated game data where the build expects it. If the game data is in a build directory, copy the needed data alongside the executable while preserving the directory structure expected by that build. This launcher does not download, extract, or relocate game data.

## Install in Batocera

1. Copy this entire folder to `/userdata/roms/ports/` on the Batocera network share. For example: `/userdata/roms/ports/Render96ex.
2. Place the compatible x86_64 executable and the game data it needs in the locations described above and by the Render96ex build instructions.
3. In Batocera, update the game list and launch **Ports > Render96ex**.

The launcher runs `sm64.us.f3dex2e` from this folder and passes `conf/` as the save path. The sample settings file enables fullscreen and requests a 1920×1080 window mode; the display and graphics driver must support that resolution. Saves are kept in `conf/`.

## ROMs, game data, and redistribution

This repository contains no ROM, extracted game assets, sound data, save file, Render96ex source code, or game executable. Each user must obtain their own legally permitted ROM and build or otherwise obtain the required game data and executable. Check the licenses for Render96ex and any optional packs before redistributing binaries, source, or assets, and include required notices. This repository does not currently specify a license for the launcher or sample configuration.
