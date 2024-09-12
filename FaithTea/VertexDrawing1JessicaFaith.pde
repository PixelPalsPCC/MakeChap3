void setup(){
 size (600,600);
}

void draw(){
   background (220);

//triangle 1
fill (153,38,0);
beginShape();
vertex(0,600);
vertex(200,250);
vertex(600,0);
vertex(0,0);
endShape();

//triangle 2
fill(255,128,0);
beginShape();
vertex(0,600);
vertex(200,250);
vertex(600,0);
vertex(600,300);
endShape();

//triangle 3
fill (128,0,0);
beginShape();
vertex(0,600);
vertex(600,300);
vertex(600,450);
endShape();

//triangle 4
fill (153,153,102);
beginShape();
vertex(0,600);
vertex(600,450);
vertex(600,600);
endShape();

//leaf 1
fill (255,255,230);
beginShape();
vertex(55,500);
vertex(50,300);
vertex(20,20);
vertex(150,250);
endShape();

//leaf 2
fill (255,255,230);
beginShape();
vertex(55,500);
vertex(200,250);
vertex(450,95);
vertex(350,350);
endShape();

//leaf 3
fill (255,255,230);
beginShape();
vertex(55,500);
vertex(350,350);
vertex(500,350);
vertex(400,500);
endShape();

//leaf 4
fill (255,255,230);
beginShape();
vertex(55,500);
vertex(400,500);
vertex(500,550);
vertex(400,550);
endShape();

}
