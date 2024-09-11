/**
  Assignment: Vertex Drawing
  Student: Jonathan Chu
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program is a vertex/shape excercise of designs following a grid.
  Last Modified: September 11, 2024
  */

void setup(){
  size(800,800);
}

void draw(){
background(#36737C);

//lines
stroke(255);
line(width,height/2,0,height/2);
line(width/2,height,width/2,0);

fill(#146F4B);
//noStroke();
rect(width/2, height/2, 200, 200, 25);
//rect(width/2+200, height/2+200, 200, 200, 25, 25, 0, 25);//bottom right box
rect(width/2-200, height/2-200, 200, 200, 25);
//rect(width/2-400, height/2-400, 200, 200, 0, 25, 25, 25);//top left box
rect(width/2-200, height/2, 200, 200, 25);
rect(width/2, height/2-200, 200, 200, 25);

rect(width/2+200, height/2+200, 200, 200, 25, 25, 0, 25);//bottom right box
rect(width/2-400, height/2-400, 200, 200, 0, 25, 25, 25);//top left box

//long rectangles
fill(#4B7E66);
rect(210,0,width,190,50,0,0,50);
rect(0,height-190,width-210,190,0,50,50,0);
fill(#258974);
rect(220,10,width,170,50,0,0,50);
rect(0,height-180,width-220,170,0,50,50,0);

//center vertex shape
fill(#FF9646);
noStroke();
beginShape();
vertex(width/2-100,height/2-100); 
vertex(width/2-75,height/2-75);
vertex(width/2+100,height/2-100);
vertex(width/2+100,height/2+75);
vertex(width/2+125,height/2+100);
vertex(width/2+100,height/2+100);
vertex(width/2-100,height/2+100);
vertex(width/2-75,height/2+25);
vertex(width/2-100,height/2-50);
endShape(CLOSE); 

//side bezier curves
int x1 = width/2-175;
int y1 = height/2-200;
int x2 = width/2-175;
int y2 = height/2+200;
int x3 = width/2-350;
int y3 = height/2;
int cx1 = 300;
int cy1 = 300;
int cx2 = 15;
int cy2 = 300;
fill(#275243);
beginShape();
vertex(x1, y1); // Start point
bezierVertex(cx1, cy1, cx2, cy2, x2, y2); // Quadratic Bezier curve
vertex(x3, y3); // End point
endShape(CLOSE);
    
pushMatrix();
translate(800,0);
scale(-1, 1);
fill(#275243);
beginShape();
vertex(x1, y1); // Start point
bezierVertex(cx1, cy1, cx2, cy2, x2, y2); // Quadratic Bezier curve
vertex(x3, y3); // End point
endShape(CLOSE);
popMatrix();

//int x4 = width/2+175;
//int y4 = height/2-200;
//int x5 = width/2+175;
//int y5 = height/2+200;
//int x6 = width/2+350;
//int y6 = height/2;
//int cx3 = width-250;
//int cy3 = height-300;
//int cx4 = width-80;
//int cy4 = height/2;
//beginShape();
//vertex(x4, y4); // Start point
//bezierVertex(cx3, cy3, cx4, cy4, x5, y5); // Quadratic Bezier curve
//vertex(x6, y6); // End point
//endShape(CLOSE);


}