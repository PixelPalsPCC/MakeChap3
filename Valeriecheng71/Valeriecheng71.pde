int step = 100;

void setup() {
 size(400, 400);
 background(255);
  ellipse(300,350,90,80);
 stroke(0);

 for(int i = 0; i < width/step; i++ ) { 
   line(i*step, 0, i*step, height);
   line(0, i*step, width, i*step);
 } 

}
