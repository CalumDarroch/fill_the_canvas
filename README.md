# Canvas Painter App technical exercise

In this technical exercise, the aim is to produce a canvas editor/"Paint"-style program - written in Ruby - that the user will interact with via the terminal. This app will be written via TDD methods entirely in Ruby, using RSpec as a testing framework and Rubocop to ensure code quality.

## Requirements

### Goals:
- TDD: I will make sure that test cases are present for every command and feature implemented in the production code.
- Edge cases will be caught, documented and handled.
- Appropriate design: abstraction will be kept to a functional minimum.

### Broad Specification:
- The user will interact with the application via their terminal.
- The user will input key commands in the form of capital letters to interact with the program. These commands will be pre-defined and given to the user for reference.
- Once the user has input a command, they will be given a list of parameters to modify the command.
- The canvas will be a square, consisting of a maximum of 250 pixels in both the X and Y axes.
- The canvas will begin at coordinates 1, 1.

### Input:
The following commands will be available to the user:

__I M N__
Create a new M x N canvas with all pixels coloured white (O).

__C__
Clears the canvas, setting all pixels to white (O).

__L X Y C__
Colours the pixel (X,Y) with colour C.

__V X Y1 Y2 C__
Draw a vertical segment of colour C in column X between rows Y1 and Y2 (inclusive).

__H X1 X2 Y C__
Draw a horizontal segment of colour C in row Y between columns X1 and X2 (inclusive).

__F X Y C__
Fill the region R with the colour C. R is defined as:
- Pixel (X,Y) belongs to R.
- Any other pixel which is the same colour as (X,Y) and shares a common side with any pixel in R also belongs to
this region.

__W F__
Scales the canvas with the given factor F (in percentage).

__S__
Show the contents of the current canvas.

__X__
Terminate the session.

__?__
Shows in program help.
