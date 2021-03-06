# DUMP and itstar

### Saving ITS files and extracting them using itstar

- Mount a tape image in the emulator.

  - Type Control-\\.

  - For KLH10, type

         devmount mta0 files.tape create
         continue

  - For SIMH, type

         attach tu0 files.tape
         continue

- In ITS, type `:dump`.  At the _ prompt, type `dump`.  The `FILE=`
  prompt will accept directory and file names.  `*` can be used as a
  wild card.  Finish with an empty line.  When DUMP has finished
  writing the files, type `quit` to exit.

- Unmount the tape image.

  - Type Control-\\.

  - For KLH10, type

         devunmount mta0
         continue

  - For SIMH, type

         detach tu0
         continue

- In the host, run itstar to extract the files:

       itstar -xf files.tape

### Moving host files to ITS

- Create one or more directories, and put the files in them.  There
  can not be directories inside directories.  For example, let's say
  you created the directories foo and bar.

- Run itstar to make a tape image:

       itstar -cf files.tape foo bar

- Mount the tape image in the emulator.

- Type Control-\\.

  - For KLH10, type

         devmount mta0 files.tape
         continue

  - For SIMH, type

         attach tu0 files.tape
         continue

- In ITS, type `:dump`.  At the _ prompt, type `load`.  The `FILE=`
  prompt will accept file names as above.  Finish with an empty line.
  If you need to load more files, type `rewind` to make another pass
  over the tape.  When you're finished, type `quit` to exit.

- Unmount the tape image as above.
