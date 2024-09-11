/**
  Assignment: MakeChap3
  Student: Esther Chen
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program draws a grid of colored circles which continously changes colors.
  Last Modified: September 10, 2024
  */

void setup() {
    size(400, 400);
    background(0);
    noStroke();
}

void draw() {
  // Loop to draw circles in a grid pattern
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      float x = i * 100 + 50;  // Calculate x-coordinate
      float y = j * 100 + 50;  // Calculate y-coordinate
      fill(random(255), random(255), random(255));  // Random fill color
      ellipse(x, y, 80, 80);  // Draw circle
    }
  }
}
