star1 starred;
star2 stargreen;
star staryellow;
cat cat1;
cubby [] cbby;
game gg;
int state;

void setup(){
  size(900,900);
  starred= new star1();
  stargreen=new star2();
  staryellow = new star(500,800,10);
  gg=new game();
  cat1 = new cat();
  cbby = new cubby[3]; // 랜덤한 커비 세마리
    for (int i = 0; i<3; i++){
    cbby[i] = new cubby();
  }
}

void draw(){
  background(254,225,232);
  gg.checkSuccess();
  if (state==1) playing();
  }
  
void playing(){
  background(255);
  stroke(0);
  starred.makestar(); // 맨 구석에 별 생성
  stargreen.makestar();
  staryellow.makestar();
  cat1.pcat(); // 고양이 생성
  cat1.catupdate();
  
  for (int i = 0; i<3; i++) {
    cbby[i].cub(); // 랜덤하게 움직이는 커비 생성
    cbby[i].cubbyupdate();
    cbby[i].checkcollision(cat1, cbby[i]);
  }
  cat1.over();
}

void keyPressed(){
    cat1.keyMove();
}
