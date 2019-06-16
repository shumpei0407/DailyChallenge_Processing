
ArrayList<Circle> circles;

void setup(){
  size(1280,631);
  circles = new ArrayList<Circle>();
  //circles.add(new Circle(200,200)); 
}

void draw(){
  background(130, 225, 255);
  frameRate(50);
  float x = random(width);
  float y = random(height);
  circles.add(new Circle(x,y)); 
  
  for(Circle c : circles) {
    if (c.edges()) {
      c.growing = false;
    }
  c.show();
  c.grow();
  }
}

//void newCircle(){
  
//  float x = random(width);
//  float y = random(height);
  
//  boolean vaild = true;
//  for (Circle c : circles) {
//    float d = dist(x,y,c.x,c.y);
//    if (d < c.r){
//      valid = false ;
//      break;
//    }
    
//    if (vaild){
//  circles.add(new Circle(x,y));
//    }
  
// }
//}
