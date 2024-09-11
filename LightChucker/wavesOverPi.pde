 /**
  Assignment: MakeChap3
  Student: Ben Glickstein
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program draws a crashing wave along a ground line. 
  Last Modified: September 11, 2024
  */



float waveAngle = 0;
float waveSpeed = 0.03; //animation speed
float waveHeight = 200;
float waveWidth = 300;
float groundLevel;
float waveProgress = 0;

void setup() {
  size(800, 600);
  fill(135, 206, 235);
  stroke(0);
  strokeWeight(3);
  groundLevel = height - 100;  // Set the groundlevel
}

void draw() {
  background(211, 211, 211); 
  translate(width / 2, groundLevel);  // Set ground level as the baseline for the wave

  // Draw the groundlevel
  stroke(135, 206, 235);
  line(-width / 2, 0, width / 2, 0);  // Ground line
  
  //Controls the starting direction of the wave horizonally. pushMatrix makes it independent of the groundlevel.
  pushMatrix();
  translate(-200,0);

  // Animate the wave curling inwards and crashing towards the ground
  for (int i = 0; i < 4; i++) { // second number determins how many lines are drawn
    float angle = waveAngle + i * 0.25; //wave angle control
    float scale = 1 - i * 0.25; //controls how close wave lines are. larger is further away
    drawWave(angle, waveWidth * scale, waveHeight * scale, i, waveProgress);
  }
  
  popMatrix();//restores previous animation before wave was moved(prevents crash)

  waveProgress += 0.005; //wave draw speed
  if (waveProgress > PI) {
    waveProgress = 0;
  }
  // Update the wave angle to simulate crashing
  waveAngle += waveSpeed;

  if (waveAngle > TWO_PI) {
    waveAngle = 0;  // Reset the wave 
  }
}

void drawWave(float angle, float w, float h, int layer, float progress) {
  stroke(0, 100 + layer * 20);  // Gradually fade out the wave as it crashes
  beginShape();
  for (float t = 0; t < progress; t += 0.1) {
    float x = cos(t + angle) * w * (1 - t / PI);
    float y = sin(t + angle) * h * (1 - t / PI);
    
    // Check if the wave has reached the "ground level" (y >= 0)
    if (y >= 0) {
      break;  // Stop drawing when the wave reaches the ground
    }
    vertex(x, y); //plot vertex points
  }
  endShape();
}
//
