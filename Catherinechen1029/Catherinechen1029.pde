// Declare global variables
int canvasWidth;
int canvasHeight;
PFont font;
int xPos;
int yPos;
int scale;
int a; 
int aTrack;

//MOUSE STUFF
boolean clicked = false;
int hCounter;
float hCap = 5;
float cCap = 10;
float aCap = 15;
float bCap = 20;

// SHAPE CLASSES
class Shape {
  // Common properties for all shapes
  float x, y;  // Position
  float lw = 10; // Line width
  color c = color(255);  // Line color
  
  // Constructor for initializing common properties
  Shape(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  
  void isPressed() {
    if (mousePressed) {  // Use built-in mousePressed
      lw = 20;
    
      if (!clicked){
      hCounter++;
      clicked = true;
      }
    } else {
      lw = 10;  // Reset to default when not pressed
      clicked = false;
    }
  }
  
  // Method to be overridden by specific shapes
  void display() {
    strokeWeight(lw);
    stroke(95,191,11);
    fill(25,97,23);
  }
}


class EllipseShape extends Shape {
  // Properties specific to the ellipse
  float w, h;  // Width and height of the ellipse
  float r;     // Rotation angle in degrees
  
  // Constructor for the ellipse, passing (xPos/scale) and (yPos/scale) to the superclass
  EllipseShape(float xPos, float yPos, float wSize, float hSize, float rad) {
    super(xPos, yPos);  // Call the superclass (Shape) constructor
    w = wSize;
    h = hSize;
    r = rad;
  }
  
  // Override the display method to draw an ellipse
  @Override
  void display() {
    isPressed();  // Check if the shape should respond to mouse presses
 
    super.display();  // Call the superclass display method (to set stroke, etc.)
    
    pushMatrix();
    translate(x, y);  // Use x and y from the superclass
    rotate(radians(r));  // Rotate the shape by r degrees
    ellipse(0, 0, w, h);  // Draw the ellipse
    popMatrix();
  }
}

class ArcShape extends Shape {
  // Properties specific to the ellipse
  float w, h;  // Width and height of the ellipse
  float b, e;
  float r;     // Rotation angle in degrees
  
  // Constructor for the ellipse, passing (xPos/scale) and (yPos/scale) to the superclass
  ArcShape(float xPos, float yPos, float wSize, float hSize, float begin, float end, float rad) {
    super(xPos, yPos);  // Call the superclass (Shape) constructor
    w = wSize;
    h = hSize;
    b = begin;
    e = end;
    r = rad;
  }
  
  // Override the display method to draw an ellipse
  @Override
  void display() {
    isPressed();  // Check if the shape should respond to mouse presses
 
    super.display();  // Call the superclass display method (to set stroke, etc.)
    
    pushMatrix();
    translate(x, y);  // Use x and y from the superclass
    rotate(radians(r));  // Rotate the shape by r degrees
    arc(0, 0, w, h,b,e);  // Draw the ellipse
    popMatrix();
  }
}
  
  class LineShape extends Shape {
  // Properties specific to the ellipse
  float x2, y2;
  
  // Constructor for the ellipse, passing (xPos/scale) and (yPos/scale) to the superclass
  LineShape(float xPos, float yPos, float x2Pos, float y2Pos) {
    super(xPos, yPos);  // Call the superclass (Shape) constructor
    x2 = x2Pos;
    y2 = y2Pos;
  }
  
  // Override the display method to draw an ellipse
  @Override
  void display() {
    isPressed();  // Check if the shape should respond to mouse presses
 
    super.display();  // Call the superclass display method (to set stroke, etc.)
    line(x, y, x2, y2);  // Draw the Line
  }

}

//HAPPY FACE
void happy(){
  EllipseShape leftEye;
  leftEye = new EllipseShape(canvasWidth / 4, canvasHeight / 2, 65, 100, 10);
  leftEye.display(); 
  
  EllipseShape rightEye;
  rightEye = new EllipseShape(canvasWidth / 4*3, canvasHeight / 2, 65, 100, -10);
  rightEye.display(); 
  
  ArcShape mouth;
  mouth = new ArcShape(canvasWidth /2, canvasHeight /5*3, 400, 100, 0, PI, 0);
  mouth.display(); 
  
  EllipseShape leftNostril;
  leftNostril = new EllipseShape(canvasWidth / 32 * 15, canvasHeight /7*4, 10, 10, 0);
  leftNostril.display(); 
  
   EllipseShape rightNostril;
  rightNostril = new EllipseShape(canvasWidth / 32 * 18, canvasHeight /7 *4, 10, 10, 0);
  rightNostril.display(); 
 
}

//CONFUSED FACE
void confused(){
  EllipseShape leftEye;
  leftEye = new EllipseShape(canvasWidth / 4, canvasHeight / 2, 65, 100, 13);
  leftEye.display(); 

  ArcShape LeftBrow;
  LeftBrow = new ArcShape(canvasWidth / 4, canvasHeight /5*1.9,  110, 45, -5*PI/6, -PI/6, -10);
  LeftBrow.display();
  
  ArcShape rightEye;
  rightEye = new ArcShape(canvasWidth / 4*3, canvasHeight / 2, 65, 100, -PI/4*5,PI/4,-13);
  rightEye.display(); 
  
  ArcShape Eyelid;
  Eyelid = new ArcShape(canvasWidth / 4*3 + 10, canvasHeight /5*3 -5,  100, 45, -PI/4*5 + 1.25,PI/4 - 1.25,-5);
  Eyelid.display();
  
  ArcShape RightBrow;
  RightBrow = new ArcShape(canvasWidth / 4*3, canvasHeight /5*2,  110, 45, PI/6 , 7*PI/6, -15 );
  RightBrow.display();
  
  ArcShape mouth;
  mouth = new ArcShape(canvasWidth /2, canvasHeight /5*3.6, 400, 100, -PI + 0.25, -0.25 , 0);
  mouth.display(); 
  
  EllipseShape leftNostril;
  leftNostril = new EllipseShape(canvasWidth / 32 * 15, canvasHeight /7*4, 10, 10, 0);
  leftNostril.display(); 
  
   EllipseShape rightNostril;
  rightNostril = new EllipseShape(canvasWidth / 32 * 18, canvasHeight /7 *4, 10, 10, 0);
  rightNostril.display(); 
 
}


//ANGRY FACE
void anger(){
  ArcShape leftTopFold;
  leftTopFold = new ArcShape(canvasWidth / 4 + 10 , canvasHeight /7*4 - 15 - 40, 120, 45, -PI/4*5 + 1.25,PI/4 - 1.25,12);
  leftTopFold.display(); 


  ArcShape leftEyelid;
  leftEyelid = new ArcShape(canvasWidth / 4 + 11, canvasHeight /7*4 - 40,  110, 45, -PI/4*5 + 1.25,PI/4 - 1.25,-7);
  leftEyelid.display();
  
  
  
   ArcShape rightTopFold;
  rightTopFold = new ArcShape(canvasWidth / 4*3 + 10, canvasHeight /7*4 - 15 - 40, 120, 45, -PI/4*5 + 1.25,PI/4 - 1.25,-12);
  rightTopFold.display(); 


  ArcShape rightEyelid;
  rightEyelid = new ArcShape(canvasWidth / 4*3 + 11, canvasHeight /7*4 -1 - 40,  110, 45, -PI/4*5 + 1.25,PI/4 - 1.25,7);
  rightEyelid.display();
  
  
  ArcShape mouth;
  mouth = new ArcShape(canvasWidth /2, canvasHeight /5*3.6 - 40, 400, 100, -PI + 0.25, -0.25 , 0);
  mouth.display(); 
  
  EllipseShape leftNostril;
  leftNostril = new EllipseShape(canvasWidth / 32 * 15, canvasHeight /7*4 - 40, 10, 10, 0);
  leftNostril.display(); 
  
   EllipseShape rightNostril;
  rightNostril = new EllipseShape(canvasWidth / 32 * 18, canvasHeight /7 *4 - 40, 10, 10, 0);
  rightNostril.display(); 
  
  LineShape leftTongueline;
  leftTongueline = new LineShape(canvasWidth/5*1.25, canvasHeight /5*3.35 - 40, canvasWidth/5*1.25, canvasHeight /5*3.6 -40);
  leftTongueline.display();
  
  LineShape rightTongueline;
  rightTongueline = new LineShape(canvasWidth/5*3.75, canvasHeight /5*3.35 - 40, canvasWidth/5*3.75, canvasHeight /5*3.6-40);
  rightTongueline.display();
 
  ArcShape Tongue;
  Tongue = new ArcShape(canvasWidth /2, canvasHeight /5*3.6 - 40, 300, 150, 0, PI , 0);
  Tongue.display(); 
  
    LineShape TongueLine;
  TongueLine = new LineShape(canvasWidth /2, canvasHeight /5*3.25 - 40, canvasWidth /2, canvasHeight /5*3.6 - 40);
  TongueLine.display();
}

//BYE
void bye(){
  ArcShape leftEye;
  leftEye = new ArcShape(canvasWidth / 4 + (xPos/scale), canvasHeight / 2 + (yPos/scale), 65, 100, 0, PI,10);
  leftEye.display(); 
  
  ArcShape rightEye;
  rightEye = new ArcShape(canvasWidth / 4*3 + (xPos/scale), canvasHeight / 2+ (yPos/scale), 65, 100, 0, PI,-10);
  rightEye.display(); 
  
  ArcShape leftBrow;
  leftBrow = new ArcShape(canvasWidth / 4 + (xPos/scale), canvasHeight /5*2 +(yPos/scale),  110, 45, -PI/6 , 5*PI/6, 15 );
  leftBrow.display();
  
  ArcShape RightBrow;
  RightBrow = new ArcShape(canvasWidth / 4*3+ (xPos/scale), canvasHeight /5*2 +(yPos/scale),  110, 45, PI/6 , 7*PI/6, -15 );
  RightBrow.display();
  
  
   ArcShape mouth;
  mouth = new ArcShape(canvasWidth /2 + (xPos/scale), canvasHeight /5*3.6 +(yPos/scale), 400, 100, -PI + 0.25, -0.25 , 0);
  mouth.display();
  
  EllipseShape leftNostril;
  leftNostril = new EllipseShape(canvasWidth / 32 * 15 + (xPos/scale), canvasHeight /7*4 + (yPos/scale), 10, 10, 0);
  leftNostril.display(); 
  
   EllipseShape rightNostril;
  rightNostril = new EllipseShape(canvasWidth / 32 * 18 + (xPos/scale), canvasHeight /7 *4 + (yPos/scale), 10, 10, 0);
  rightNostril.display();  
 
}

void setup() {
  // Initialize variables
  canvasWidth = 600;
  canvasHeight = 600;
  scale = 100;
  // Set the size of the canvas
  size(600,600);
  font = createFont("PPMondwest-Regular.otf", 30);
  textFont(font);
  textAlign(CENTER);
  

}


void draw() {
  background(25,97,23);  // Set background to white
   
  println(hCounter);
  if (hCounter <= hCap) {
    fill(95,191,11);
    text("Hi Froggie! Go ahead, Pet it!", canvasWidth/2, canvasHeight/4);
   happy();
 
  }
  if (hCounter <= cCap && hCounter >hCap) {
    fill(95,191,11);
    text("Oh, I don't think it likes that...", canvasWidth/2, canvasHeight/4);
   confused();
  
  }
  if (hCounter <= bCap && hCounter >cCap) {
    fill(95,191,11);
    text("You're gonna keep buggin' it?", canvasWidth/2, canvasHeight/4);
   anger();
  }
  
  if (hCounter > bCap){
     fill(95,191,11);
    text("Ach! You scared it off!", canvasWidth/2, canvasHeight/4);
     bye();
     yPos += 1;
     xPos += 0.1 * pow(yPos - 30, 2) + (canvasHeight/2);
  }

 
 
}