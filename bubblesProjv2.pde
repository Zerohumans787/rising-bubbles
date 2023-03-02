//  int t; //<>//
//class name, constructor name and file name MUST ALL BE THE SAME
int nBubbles = 10;
ArrayList <Bubble> aBub;
int removed=0;


void setup() {
  size(500, 700);
  aBub = new ArrayList <Bubble>();
  for (int i = 0; i < nBubbles; i++) {
    aBub.add(new Bubble());
  }
  
}

void draw() {
  background(255);
  for (int i = 0; i < nBubbles-removed; i++) {
    if (aBub.get(i).y >= 0) {
      aBub.get(i).rise_wiggle();
      aBub.get(i).show();
    } else {
      aBub.remove(i);
      removed++;
    }
    textSize(14);
    text( aBub.size(), 250, 250);
  }
}
