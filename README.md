# Quines
Some basic Quines which generates some basic Quines in C, Assembly and Python

## Compiling and running

### C and ASM:

In each folder (C, ASM), run `make`. Three executable (`Colleen`, `Grace` and `Sully`) will compile.
Currently only tested on OS X.

Run with `./Colleen`, `./Grace` and `./Sully`.

### Python:

Run `python3 Colleen.py`, `python3 Grace.py` and `python3 Sully.py`

## Descriptions:

* Colleen:

  - Outputs its sourcecode in standard output
  
  - Two comments, one in main, one outside of the program
  
  - Main function and another function which is called from main
  
  Run `./Colleen > tmp; diff tmp Colleen.c/Colleen.s` would result nothing

* Grace:
  
  - Produces file Grace_kid.c/Grace_kid.s/Grace_kid.py which is identical to the original file
  
  - Three Marcros, no function visible (main is excuted through calling a macro)
  
  - One comment

  Run `./Grace; diff Grace_kid.c Grace.c` would result nothing, same for .s and .py
  
* Sully
  
  - Output depending on the initialization of index `i` in initial program
  
  - Will produce files Sully_i.c through Sully_0.c (same for .s and .py)
  
  - Each file k is produces through compiling and excuting file Sully_(k + 1).c
  
  Run `./Sully; diff Sully_j.c Sully_k.c` should only yield the one line different where int i is set
 
