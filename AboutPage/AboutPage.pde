PFont pressStart; 
PFont arial;
PImage gitIM;
PImage linkedIM;
PImage emailIM;
PImage qmIM;
PImage profPic;
boolean contactOpen;
int selectedOption = 0;


void setup() {
    size(1500, 800);
    gitIM = loadImage("Github.png");
    linkedIM = loadImage("Linkedin.png");
    emailIM = loadImage("Email.png");
    qmIM = loadImage("QM.png");
    profPic = loadImage("ProfPic.jpg");
    contactOpen = false;

}

void draw(){
    drawBackground();
    drawScreen();
    drawTextandPic();
    drawControls();
    drawArrows();
    if(contactOpen){
        drawContactInfo();
    }
}
void drawBackground(){
    //Outline 
    background(74, 8, 39);
    
    //Background
    stroke(0);
    strokeWeight(2);
    fill(130, 17, 66);
    rect(10,10,1480,780);
}

void drawScreen(){
    //Inner Screen
    fill(250, 125, 182);
    stroke(74, 13, 52);
    strokeWeight(4);
    rect(150,50,1200,700,50);
    fill(255, 255, 255);
    noStroke();
    rect(210,110,1080,580,50);

}

void drawTextandPic(){
    //Title
    textAlign(CENTER, CENTER);
    pressStart = createFont("Press Start 2P", 40);
    textFont(pressStart);
    fill(0,0,0);
    text("ABOUT ME", 750, 85);

    //Profile Picture
    image(profPic,230,130, 360, 540);
    //rect(210,110,400,580,50);
    
    //Bio
    textAlign(LEFT, CENTER);
    textFont(pressStart);
    textSize(12);
    fill(0,0,0);
    text("Welcome to my portfolio!",640,400);
    text("I created this to showcase", 640, 425);
    text("my two passions: web and", 640,450);
    text("game design. Learn about", 640, 475);
    text("what makes me ME through", 640, 500);
    text("this experience. Play a", 640, 525);
    text("few games, explore past", 640, 550);
    text("projects, and learn about", 640, 575);
    text("my experiences and skills", 640, 600);
    text("as you enter the gamified", 640, 625);
    text("world of Caitlyn Jones.", 640, 650);


    //Profile Information
    textAlign(LEFT, CENTER);
    textFont(pressStart);
    textSize(16);
    fill(250, 125, 182);
    text("NAME:", 640, 140);
    textAlign(LEFT, CENTER);
    fill(0);
    text("Caitlyn Jones", 750, 140);

    fill(250, 125, 182);
    text("DEGREE:", 640, 180);    
    fill(0);
    text("BS in CS and Applied Math", 775, 180);

    fill(250, 125, 182);
    text("BASED IN:", 640, 220);
    fill(0);
    text("??????", 800, 220);

    textAlign(LEFT, CENTER);
    fill(250, 125, 182);
    text("AGE:", 640, 260);
    fill(0);
    text("22", 725, 260);

    textAlign(LEFT, CENTER);
    fill(250, 125, 182);
    text("SIGN:", 640, 300);
    fill(0);
    text("Libra", 740, 300);

    textAlign(LEFT, CENTER);
    fill(250, 125, 182);
    text("DREAM JOB:", 640, 340);
    fill(0);
    text("Web and Game Developer", 825, 340);

    stroke(0);
    strokeWeight(3);
    line(630,370,1270,370);

    textAlign(LEFT,CENTER);
    
    fill(130, 17, 66); 
    textSize(20);
    text("EXPLORE SITE", 1000, 450);
    text("PLAY GAMES", 1000, 500);
    textSize(10);
    text("KRABBY PATTY CATCHER", 1020, 530);
    text("SUDOKU", 1020, 550);
}

void drawControls(){
    //Controls
    
    
    stroke(0,0,0);

    // circle(87.5,550,75);
    // fill(23, 23, 23);
    // circle(87.5,550,60);
    // fill(0,0,0);
    // circle(87.5,550,50);

    fill(0,0,0);
    rect(60,525,25,75);
    rect(35,550,75,25);

    

    stroke(176, 176, 176);
    strokeWeight(3);
    line(72.5,535, 72.5, 545);
    line(72.5, 580, 72.5, 590);
    line(45, 562.5, 55, 562.5);
    line(90, 562.5, 100, 562.5);
    stroke(0);

    noFill();
    strokeWeight(2);
    circle(72.5,562.5, 100);

    fill(0,0,0);
    noStroke();
    circle(1425,275,30);
    circle(1425,325,30);
    circle(1450,300,30);
    circle(1400,300,30);

    textAlign(CENTER,CENTER);
    fill(176, 176, 176);
    arial = createFont("Arial",20);
    textFont(arial);
    text("X", 1425, 275);
    text("A", 1450,300);
    text("Y", 1400, 300);
    text("B", 1425, 325);


    noFill();
    stroke(0,0,0);
    circle(1425,300,100);

    
    
    noFill();
    circle(1425,550,90);
    fill(23, 23, 23);
    circle(1425,550,70);
    fill(0,0,0);
    circle(1425,550,50);

    noFill();
    circle(77.5,200,90);
    fill(23, 23, 23);
    circle(77.5,200,70);
    fill(0,0,0);
    circle(77.5,200,50);

    noStroke();
    fill(255, 0, 0);
    circle(50,750,20);

    stroke(0,0,0);
    line(1400,50,1450,50);
    line(1400,60,1450,60);
    line(1400,70,1450,70);

    textAlign(CENTER,CENTER);
    pressStart = createFont("Press Start 2P", 10);
    textFont(pressStart);
    fill(0,0,0);
    text("Power",90,750);

    noFill();
    stroke(0,0,0);
    ellipse(735,770,20,20);
    ellipse(735,770,10,10);
    ellipse(765,770,20,20);
    fill(0);
    ellipse(765,770,10,10);
    
    image(qmIM, 1285,755,30,30);


}

void drawArrows(){
    fill(255, 69, 201);
    stroke(0);
    strokeWeight(1);
    if(frameCount % 80 < 40){
        if(selectedOption == 0){
            triangle(1005,525,1015,530,1005,535);
        }
        else{
            triangle(1005,545,1015,550,1005,555);

        }
    }
    
}
void drawContactInfo(){
    stroke(0);
    strokeWeight(4);
    fill(255,255,255);
    rect(1125,580,350,150, 30);
    noStroke();
    triangle(1270,720,1300,750,1330,720);
    stroke(0);
    line(1280,730,1300,750);
    line(1300,750,1320,730);


    image(gitIM, 1145, 590, 40,40);
    image(linkedIM, 1145, 635, 40,40);
    image(emailIM, 1145, 680, 40,40);

    textAlign(LEFT,CENTER);
    textFont(pressStart);
    textSize(10);
    fill(0,0,0);
    text("@caitlynj10", 1195, 610);
    text("/caitlyn-jones1022", 1195, 655);
    text("caitlyn.jones1022@gmail.com", 1195, 700);

}

void mousePressed(){
    if(mouseX > 1285 && mouseX < 1315 && mouseY > 755 && mouseY < 785){
        contactOpen = !contactOpen;
    }


}


  void keyPressed() {
    if(key == CODED){
        if(keyCode == DOWN){
            selectedOption = 1;
        }
        if(keyCode == UP){
            selectedOption = 0;
        }
    }
    
  }