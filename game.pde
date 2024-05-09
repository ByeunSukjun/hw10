class game {
  game() {
  }
  float x, y, d, vx, vy;

  void checkSuccess() { //맨 처음 시작 화면
    fill(0);
    textSize(100);
    text("press a", 300, 300);
    fill(255, 174, 138);
    rect(400, 400, 100, 100);
    fill(0);
    text("a", 425, 475);
    if (mousePressed==true) { // 버튼 누르면 게임 시작
      if ((400<mouseX && mouseX<500) && (mouseY>400 && mouseY<500)) state=1;
    }
  }
  
  void keyMove() { //고양이 움직이는거
    if (key=='d') x+=8;
    else if (key=='a') x-=8;
    else if (key=='w') y-=8;
    else if (key=='s') y+=8;
  }


  void catupdate() {
    if (x>width) x=0;  // 고양이 바깥으로 나가면 반대편에서 돌아오는거
    if (y>height) y=0;
    if (x<0) x=width;
    if (y<0) y=height;
  }

  void over() {
    if (dist(x, y, 800, 800)<40+60 | dist(x, y, 200, 800)<40+60 | dist(x, y, 500, 800) < 40+60) { //고양이랑 별이랑 닿으면 게임 오버
      background(0);
      textSize(150);
      fill(255);
      text("game over", 140, 500);
      return; //커비 정지
    }
  }

void checkcollision(cat c, cubby b) { // 고양이랑 커비랑 닿으면 고양이 원위치
    if (dist(c.x, c.y, b.x, b.y)<120*d+60) {
      c.x=150;
      c.y=150;
    }
  }
  
    void cubbyupdate() { //커비 움직이는거
    x += vx;
    y += vy;
    if (x>width-150*d || x<150*d) vx=-vx;
    if (y>height-150*d || y<150*d) vy=-vy;
  }
};
