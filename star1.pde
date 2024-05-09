class star1 extends star{
  star1(){
    super(800,800,10);
  }
void makestar() {
    beginShape();
    fill(255,125,0);
    vertex(x, y-d*8);
    vertex(x+d*2, y-d*3);
    vertex(x+d*7, y-d*3);
    vertex(x+d*3, y);
    vertex(x+d*5, y+d*5);
    vertex(x, y+d*3);
    vertex(x-d*5, y+d*5);
    vertex(x-d*3, y);
    vertex(x-d*7, y-d*3);
    vertex(x-d*2, y-d*3);
    stroke(0.0, 255);
    endShape();
    fill(0);
    ellipse(x-d*1, y-d*0.5, d, d*2);
    ellipse(x+d*1, y-d*0.5, d, d*2);
    fill(255, 255, 255);
    ellipse(x-d, y-d*0.75, 0.5*d, d);
    ellipse(x+d, y-d*0.75, 0.5*d, d);
  }
};
