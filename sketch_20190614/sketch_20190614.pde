PImage img;

void setup(){
  size(1280,853);
  img = loadImage("shibuya.jpg");
  background(50);
}

void draw(){
  //image(img,0,0); 
  for (int i = 0; i < 1000; i++){
    float x = random(width);
    float y = random(height);
    color c = img.get(int(x),int(y));
    blendMode(DIFFERENCE);
    strokeWeight(1);
    stroke(20);   
    //stroke(255,10);
    fill(c,300);
    rect(x,y,random(1,20),random(1,20));
}

}
