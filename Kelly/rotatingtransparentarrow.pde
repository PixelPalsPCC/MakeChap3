/**
  Assignment: MakeChap3
  Student: Kelly Gee
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program makes a transparent blue arrow rotate around the mouse cursor.
  Last Modified: September 11, 2024
  */

float angle = 0.0;
void setup() {
  size(1000, 1000);
  background(0);
}

void draw() {
  rotate(angle);
  translate(mouseX,mouseY);
  beginShape();
  fill(50, 200, 255, 80);
  vertex(180, 82);
  vertex(207, 36);
  vertex(214, 63);
  vertex(407, 11);
  vertex(412, 30);
  vertex(219, 82);
  vertex(226, 109);
  endShape(CLOSE);
  angle += 0.1;
}
