PShape fatur, fatur2, zaki;
float angle = 0;
float posY = 0;
float posX = 0;
float scalfaturactor = 1.0;
boolean mirrorX = false;
boolean mirrorY = false;

void setup() {
  size(2000, 1000);

  // Huruf F pertama
  fatur = createShape();
  fatur.beginShape();
  fatur.vertex(0, 900);
  fatur.vertex(0, 400);
  fatur.vertex(250, 400);
  fatur.vertex(250, 500);
  fatur.vertex(100, 500);
  fatur.vertex(100, 600);
  fatur.vertex(250, 600);
  fatur.vertex(250, 700);
  fatur.vertex(100, 700);
  fatur.vertex(100, 900);
  fatur.endShape(CLOSE);

  // Huruf F kedua (berjarak 10 pada sumbu x dari huruf F pertama)
  fatur2 = createShape();
  fatur2.beginShape();
  fatur2.vertex(260, 900);
  fatur2.vertex(260, 400);
  fatur2.vertex(510, 400);
  fatur2.vertex(510, 500);
  fatur2.vertex(360, 500);
  fatur2.vertex(360, 600);
  fatur2.vertex(510, 600);
  fatur2.vertex(510, 700);
  fatur2.vertex(360, 700);
  fatur2.vertex(360, 900);
  fatur2.endShape(CLOSE);

  // Huruf Z (berjarak 10 pada sumbu x dari huruf F kedua)
  zaki = createShape();
  zaki.beginShape();
  zaki.vertex(650, 500, 100);   
  zaki.vertex(500, 500, 100);   
  zaki.vertex(500, 400, 100);   
  zaki.vertex(750, 400, 100);   
  zaki.vertex(750, 500, 100);   
  zaki.vertex(600, 800, 100);
  zaki.vertex(750, 800, 100);  
  zaki.vertex(750, 900, 100);   
  zaki.vertex(500, 900, 100);   
  zaki.vertex(500, 800, 100);   
  zaki.vertex(650, 500, 100);  
  zaki.endShape(CLOSE);
}

void draw() {
  background(255);
  
  translate(width / 2 + posX, height / 2 + posY);
  translate(0, 0); // Pusatkan rotasi pada huruf F kedua dan geser ke kiri 300

  rotate(radians(angle));

  scale(scalfaturactor);

  scale(mirrorX ? -1 : 1, mirrorY ? -1 : 1);

  shape(fatur, -750, -650);  // Sesuaikan posisi huruf F pertama
  shape(fatur2, -390, -650); // Huruf F kedua sebagai pusat
  shape(zaki, -30, -650);   // Sesuaikan posisi huruf Z
}

void keyPressed() {
  if (key == 'W') {
    angle += 5;
  } else if (key == 'C') {
    angle -= 5;
  } else if (key == '<') {
    mirrorX = !mirrorX;
  } else if (key == '>') {
    mirrorY = !mirrorY;
  } else if (keyCode == UP) {
    posY -= 5;
  } else if (keyCode == DOWN) {
    posY += 5;
  } else if (keyCode == RIGHT) {
    posX += 5;
  } else if (keyCode == LEFT) {
    posX -= 5;
  } else if (key == '+') {
    scalfaturactor += 0.1;
  } else if (key == '-') {
    scalfaturactor -= 0.1;
  }
}
