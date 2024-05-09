class cubby extends game {
  //constructor
  cubby() {
    d=random(0.2, 0.5); //커비용 랜덤 수
    x=random(150*d, width-150*d);
    y=random(150*d, height-150*d);
    vx=random(1, 5);
    vy=random(1, 5);
  }

  //member function

  void cub() { //커비그리기
    fill(255, 54, 54); //발
    ellipse(x+75*d, y+125*d, 130*d, 70*d);
    ellipse(x-75*d, y+125*d, 130*d, 70*d);
    fill(254, 174, 191); //머리
    circle(x, y, d*300);
    fill(129, 54, 70); // 입
    ellipse(x, y+25*d, 17*d, 25*d);
    fill(248, 153, 183);
    ellipse(x-90*d, y, 45*d, 25*d);
    fill(0);
    ellipse(x-40*d, y-40*abs(d), 40*d, 80*d);
    fill(0, 105, 217);
    ellipse(x-40*d, y-45*abs(d), 30*d, 60*d);
    fill(0);
    ellipse(x-40*d, y-50*abs(d), 30*d, 50*d);
    fill(255);
    ellipse(x-40*d, y-57*abs(d), 18*d, 30*d);

    fill(248, 153, 183);
    ellipse(x-90*d, y, 45*d, 25*d);
    fill(0);
    ellipse(x-40*d, y-40*abs(d), 40*d, 80*d);
    fill(0, 105, 217);
    ellipse(x-40*d, y-45*abs(d), 30*d, 60*d);
    fill(0);
    ellipse(x-40*d, y-50*abs(d), 30*d, 50*d);
    fill(255);
    ellipse(x-40*d, y-57*abs(d), 18*d, 30*d);

    fill(248, 153, 183);
    ellipse(x-90*(-d), y, 45*(-d), 25*(-d));
    fill(0);
    ellipse(x-40*(-d), y-40*abs(d), 40*(-d), 80*(-d));
    fill(0, 105, 217);
    ellipse(x-40*(-d), y-45*abs(d), 30*(-d), 60*(-d));
    fill(0);
    ellipse(x-40*(-d), y-50*abs(d), 30*(-d), 50*(-d));
    fill(255);
    ellipse(x-40*(-d), y-57*abs(d), 18*(-d), 30*(-d));
  }

};
