class Circle{
  float x;
  float y;
  float r;
     
     boolean growing = true;
  
  Circle(float x_, float y_){
   x = x_;
   y = y_;
   r = 0.5;
  
  }
  
  void grow(){
   if (growing) { 
    r = r - random(-10,10)+random(-10,10); 
   }
  }
  
  boolean edges(){
   return (x + r > width || x - r < 0 || y + r > height || y - r < 0) ;
  }
  
  void show(){
   strokeWeight(5);
   stroke(255,0,0);
   blendMode(DIFFERENCE);
   fill(255,0,0);
   //rect(x, y, r*2, r*2);
   //rect(x, y, r*random(-2,2), r*random(-2,2));
   rect(x*random(10), y*random(10), r*random(-3,3), r*random(-3,3));
   stroke(130, 225, 255);
   fill(130, 225, 255);
   rect(x*random(10), y*random(10), r*random(-3,3), r*random(-3,3));
   ellipse(x*random(20), y*random(20), r, r);
  }
}
