 /**
  Assignment: MakeChap3
  Student: Kaliani Boden
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program draws a grid of dark grey line intersecting each other.
  Last Modified: September 11, 2024
  */


  void setup() {
    size(600, 600);
    strokeWeight(30);
}
  void draw() {
    background(204);
    stroke(102);
    line(40, 0, 70, height);
    if (mousePressed == true) {
stroke(0); }
    line(0, 70, width, 50);
  }
