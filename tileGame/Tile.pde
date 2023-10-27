/* PART 0
  Complete the Tile class as described below.
  A Tile will always be a square.
*/

class Tile {

  /* PART 0
  ===================
  Fields: A Tile object should be able to store:
  The (x, y) position of its top, left corner.
  The length of its sides.
  An integer value in the range [0, 2]
  ===================*/

  /* PART 0
  ===================
   Constructor:
   Set position fields to the provided parameters.
   Set size field to s, but do not set it to
        a value less than 10.
   Set value to a random integer in the range [0, 2]
  =================== */
  Tile(int x, int y, int s) {

  }//constructor

  /* PART 0
  ===================
   display()
   Draw a square of size tsize at (tx, ty).
   Set the fill color based on value:
   0: red
   1: green
   2: blue
   =================== */
  void display() {

  }//display



  //DO NOT MOVE UNTIL UNTIL COMPLETING PART 1
  /* PART 2
  ===================
   select(x, y)
   This will determine if (x, y) is within the shape
   of the square of the calling tile, and allow
   the tile to be moved.

   First, add three new instance variables:
    1. A boolean value to represent if the Tile
      has been seleted.
    2. (x, y) will be mouse coordinates which may
       be anywhere inside the Tile. Since the position
       of the tile is based on its top-left corner,
       we need to keep track of the diferences between
       (x, y) and the position of the tile.

      Add two fields that will store
      the difference between the parameters (x, y)
      and the instance variables representing the
      position of the corner of the Tile.

   Sets the boolean instance variable to true or
   false based on if (x, y) is within the Tile.

   If that is true, set the new coordiante fields
   as described above.
   =================== */
  void select(int x, int y) {

  }//select

  /* PART 2
  ===================
   setXY(x, y)

   If the boolean field used to determine that
   the tile has ben selected is true:
      Change the position of the tile based on the
      provided arguments.
      (x, y) will be mouse coordinates, that may not
      represent the top-left corner of the tile. Use
      the new instance variables added for the
      select() methods to move the Tile correctly.
   =================== */
  void setXY(int x, int y) {

  }//setXY

}//Tile
