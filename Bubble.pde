//Class Bubble
class Bubble {
  //ALL METHODS HAVE ACCESS TO PROPERTIES
  int bSize;
  int[] bColor; //length is 4 - all between 0 and 255!
  int x;
  int y;
  

  //constructor: MUST BE THE CLASS NAME
  //NO TYPE FOR THE CONSTRUCTOR
  Bubble() {
    //this is the constructor
    //compute x, y, size, color
    bSize = (int) (Math.random() * 80) + 20;
    x = (int) (Math.random() * width);
    y = (int) (Math.random()*height);
    bColor = new int [4];
    for(int i = 0; i<bColor.length; i++){
      bColor[i] = (int)(Math.random()*256);
    }
    
  }

  //won't return anything
  //it will still do stuff
  //MUTATOR METHOD
  void rise_wiggle() { //no params
    //if (t<
    float rFactor = 0.05;
    float r = ((int) (Math.random() * 10) + bSize) * rFactor;
    //float r = bSize * rFactor;
    int w = (int) (Math.random() * 9) - 4; //LOCAL variable
    x += w;
    //x += (int) (Math.random() * 9) - 4; SAME AS ^^
    y -= r;
    
  }

  void show() { //no params
    //this is where we'll draw the bubble
    //it will use the x, y, and size
    //what color?
    fill(bColor[0], bColor[1], bColor[2], bColor[3]);
    ellipse(x, y, bSize, bSize);
    //THAT'S IT!
  }
}
