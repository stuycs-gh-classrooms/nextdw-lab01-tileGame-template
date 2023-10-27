/*
  This program will run a simple game to be played as follows:

    The screen will be split in half vertically. The top area
    will be white, and the bottom will be split into 3 euqally
    sized colored areas (red, green, blue).

    A colored square wil appear in the white area. You will
    have to drag the tile into the bottom area with the same color
    before the timer runs out.

    If you succeed, the timer will reset and a new square, but
    slightly smalelr, will appear.

    You get a point for each square you move before the timer
    runs out.

    The game ends if the timer runs out before you get the square to
    the correct destination.

    This assignment is broken up into 4 parts.

    PART 0: Create the Tile class, have a tile appear in the driver.

    Part 1: Display the score and timer, have the timer decrease
            every second, when the timer reachers 0 have the game
            "end".
            This does not involve interacting with the Tile class.

    Part 2: Allow the user to select and move the Tile.
            This will involve modifying the Tile class and event
            listeners in the driver.

    Part 3: If the user puts the tile in the right color area,
            increase the score and keep playing.

*/

/* ===================
  You should not add any new global
  variables, but you will need to interact
  with each of these.
  =================== */
Tile piece; //The tile to be moved around
int tileSize; //The size for new Tiles
int zoneSize; //The width of each color zone
int redZone; //The left x coordinate of the red zone
int greenZone; //The left x coordinate of the blue zone
int blueZone; //The left x coordinate of the green zone
int zoneTop; //The top edge of the color zone
int score; //The score
int timer; //Timer should represent number of seconds remaining
boolean playing; //true or false depending on the state of the game


/* ===================
  You should not modify setup
  =================== */
void setup() {
  size(600, 400);
  frameRate(60); //important to know for accurate timing.

  //set the variables for the colored area of the screen.
  //you should not modify these variables, but you will
  //need them in Parts 0 and 3
  zoneSize = width/3;
  redZone = 0;
  zoneTop = 200;
  greenZone = zoneSize;
  blueZone = zoneSize * 2;

  /* PART 0
    Sets up the changing elements of the game.
    See reset() definition below.
  */
  reset();
}//setup

/* ===================
  You will need to slightly modify draw
  to complete PART 0.

  PART 1 is entirely in draw()
  =================== */
void draw() {
  background(255);
  drawBoard();

  //PART 0
  //uncomment this once you've completed PART 0.
  //piece.display();

  //Text setup, leave alone.
  textSize(30);
  fill(0);
  textAlign(LEFT, TOP);
  text("score: " + score, 0, 0);

  //align to disply timer/game over, do not change
  textAlign(RIGHT, TOP);

  /* PART 1
    If playing is true:
      Display the timer value
      Every second (check frameRate in setup)
        decrease timer by 1.
      If the timer reaches 0:
        set playing to false
    If playing is not true
      Display "game over" in place of the timer.
  */



}//draw

/* ===================
  reset()
  You do not need to modify this function.
 =================== */
void reset() {
  timer = 5; //timer is set to 5 seconds
  playing = true; //game is active
  score = 0; //no score yet
  tileSize = 100; //initial tile size

  /* PART 0
    After completing the Tile class,
    write makeTile, defined below.
  */
  makeTile();
}//reset

/* PART 0
  ===================
  makeTile()

  Use the Tile constructor to initialize
  piece to a new tile that will be at a random
  position in the white area of the screen.
  The size of the tile should be tileSize, and
  the entire Tile should be in the white area
  (no part of it should be in the colored zone)
 =================== */
void makeTile() {

}//makeTile



/* PART 2
  FIRST: Complete the select() method in the
  Tile class.
  ===================
  mousePressed()

  If playing is true, call the select() method
  on piece, using the current mouse coordinates.
 =================== */
void mousePressed() {

}//mousePressed


/* PART 2
  FIRST: Complete the setXY() method in the
  Tile class.
  ===================
  mouseDragged()

  If playing is true, call the setXY() method
  on piece, using the current mouse coordinates.
 =================== */
void mouseDragged() {

}//mouseDragged

/* PART 2 & 3
  ===================
  mouseDragged()

  PART 2:
    If playing is true, and piece is currenly
    selected, set the selected field in piece to
    false.

  PART 3:
    FIRST: Write checkZone below

    SECOND: Call checkZone using the mouse position
      If checkZone returns true:
        Increase score by 1.
        Decrease tileSize by 5.
        Call makeTile()
        Reset timer to 5.
 =================== */
void mouseReleased() {

}//mouseReleased


/* PART 3
  ===================
  checkZone(x, y)

  (x, y) will be the mouse position when
  the mouse has been released. This method should
  return:
    true if (x, y) is in the correct color zone
    for pice.
    false otherwise

  You will need to use the color value field
  of piece, as well as the global zone variabels.
 =================== */
boolean checkZone(int x, int y) {
  return false;
}//checkZone


/* ===================
  You should not modify drawBoard
  =================== */
void drawBoard() {
  noStroke();
  fill(255, 0, 0);
  rect(redZone, zoneTop, zoneSize, height - zoneTop);
  fill(0, 255, 0);
  rect(greenZone, zoneTop, zoneSize, height - zoneTop);
  fill(0, 0, 255);
  rect(blueZone, zoneTop, zoneSize, height - zoneTop);
  stroke(0);
  strokeWeight(5);
  line(0, zoneTop, width, zoneTop);
}//drawBoard
