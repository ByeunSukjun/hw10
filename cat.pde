class cat extends game{
  //constructor
  cat() {
    x=200;
    y=200;
    d=10;
  }
  //member function
  void pcat() { //고양이 그리기
    strokeWeight(1);
    fill(255, 204, 204);
    triangle(x-5*d, y-2*d, x-2*d, y-5*d, x-7*d, y-9*d);//바깥귀
    triangle(x+5*d, y-2*d, x+2*d, y-5*d, x+7*d, y-9*d);

    fill(255);
    triangle(x-6*d, y-7*d, x-3*d, y-5*d, x-5*d, y-3*d);//안쪽귀
    triangle(x+6*d, y-7*d, x+3*d, y-5*d, x+5*d, y-3*d);

    fill(255, 204, 204);
    circle(x, y, 12*d);//얼굴

    arc(x-1.5*d, y+d, 3*d, 2*d, 0, PI);
    arc(x+1.5*d, y+d, 3*d, 2*d, 0, PI);

    arc(x, y+2.25*d, 3*d, 2*d, 0, PI);//입

    fill(255);
    ellipse(x-2*d, y-1.5*d, 2*d, 3*d);//흰자
    ellipse(x+2*d, y-1.5*d, 2*d, 3*d);

    fill(0);
    ellipse(x-1.5*d, y-1.5*d, d, 2*d);//검은자
    ellipse(x+1.5*d, y-1.5*d, d, 2*d);

    strokeWeight(10);
    point(x, y);//코

    line(x+d, y-3*d, x+3*d, y-4*d);
    line(x-d, y-3*d, x-3*d, y-4*d);

    strokeWeight(1);
  }

};
