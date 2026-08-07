import java.awt.Font;
PFont pressStart; 
PFont arial;
PFont garamond;
PFont garamondBold;
PFont garamondItalic;
PImage gitIM;
PImage linkedIM;
PImage emailIM;
PImage qmIM;
PImage SK;
PImage SB;
PImage java;
PImage js;
PImage python;
PImage html;
boolean contactOpen;
int menuOption; //0 = experience, 1 = games, 2 = projects, 3 = skills


void setup(){
    size(1500, 800);
    gitIM = loadImage("Github.png");
    linkedIM = loadImage("Linkedin.png");
    emailIM = loadImage("Email.png");
    qmIM = loadImage("QM.png");
    SK = loadImage("Sudoku.png");
    SB = loadImage("SpongeBob.png");
    java = loadImage("Java.png");
    js = loadImage("JS.png");
    python = loadImage("python.png");
    html = loadImage("html.png");
    contactOpen = false;
    menuOption = 2;

    

   
}

void draw(){
    drawBackground();
    drawScreen();
    drawControls();
    if(contactOpen){
        drawContactInfo();
    }
    if(menuOption == 0){
        drawExperience();
    }
    else if(menuOption == 1){
        drawGames();
    }
    else if(menuOption == 2){
        drawProjects();
    }
    else if(menuOption == 3){
        drawSkills();
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
    fill(255,255,255);
    stroke(74, 13, 52);
    strokeWeight(4);
    rect(150,50,1200,700,50);  
   

}


void drawExperience(){
    textAlign(CENTER,CENTER);
    textFont(pressStart);
    textSize(25);
    fill(207, 14, 165);
    text("EXPERIENCE", 325,100);
    fill(0);
    text("GAMES", 625,100);
    if(mouseX > 560 && mouseX < 685 && mouseY > 85 && mouseY < 110){
        fill(207,14,165);
        text("GAMES", 625, 100);
    }
    fill(0);;
    text("PROJECTS", 925,100);
    if(mouseX > 822 && mouseX < 1020 && mouseY > 85 && mouseY < 110){
        fill(207,14,165);
        text("PROJECTS", 925, 100);
    }
    fill(0);
    text("SKILLS", 1225,100);
    if(mouseX > 1150 && mouseX < 1300 && mouseY > 85 && mouseY < 110){
        fill(207, 14, 165);
        text("SKILLS", 1225,100);
    }
    fill(0);
    line(180,130,1320,130);
    stroke(207, 14, 165);
    strokeWeight(4);
    line(180,130,480,130);
    textAlign(LEFT, CENTER);
    garamond = createFont("Garamond",15);
    garamondBold = new PFont(new Font("Garamond", Font.BOLD, 15), true);
    garamondItalic = new PFont(new Font("Garamond", Font.ITALIC, 15), true);
    textFont(garamondBold);
    text("Lead Software Engineer", 200,170);
    textFont(garamondItalic);
    text("Enjoyment Department", 200, 190);
    textFont(garamond);
    text("\u2022 Built the React + Vite frontend for a nightlife discovery web app, including an interactive Mapbox interface, real-time event/venue filtering, and curated verified event browsing", 210, 215);
    text("\u2022 Integrated Firebase (Auth + Firestore), Stripe subscriptions, and Resend email automation to deploy a mobile-first PWA on Vercel with personalized user features", 210, 240);

    textFont(garamondBold);
    text("Volleyball Coach", 200,280);
    textFont(garamondItalic);
    text("Beaver Country Day School; Lionheart Volleyball Club", 200, 300);
    textFont(garamond);
    text("\u2022 Coached and mentored beginner athletes, improving fundamental skills, teamwork, and confidence in competitive play", 210, 325);
    text("\u2022 Fostered an inclusive and supportive environment that encouraged collaboration and personal growth", 210, 350); 

    textFont(garamondBold);
    text("Qualitative & Quantitative Insights Externship", 200,390);
    textFont(garamondItalic);
    text("Extern, Beats by Dre", 200, 410);
    textFont(garamond);
    text("\u2022 Conducted qualitative and quantitative research to uncover customer insights related to trends, behaviors, and preferences for Beats audio devices", 210, 435);
    text("\u2022 Used various AI platforms to synthesize insights and present findings in a detailed visual presentation", 210, 460);

    textFont(garamondBold);
    text("Computer Science Tutor", 200,500);
    textFont(garamondItalic);
    text("Brandeis University", 200, 520);
    textFont(garamond);
    text("\u2022 Taught students introductory Python and Java concepts and problem-solving techniques with guided practice and coding exercises", 210, 545);
    text("\u2022 Contributed to the academic growth and development of new Computer Science majors by assisting with assignments and building student confidence in programming ", 210, 570);

    
    textFont(garamondBold);
    text("Vice President of External Affairs, Executive Board ", 200,610);
    textFont(garamondItalic);
    text("Sigma Delta Tau, Delta Gamma Chapter", 200, 630);
    textFont(garamond);
    text("\u2022 Led the planning and coordination of external events and partnerships for the chapter.", 210, 655);
    text("\u2022 Managed budgets and allocated funds to support organizational engagement and outreach initiatives.", 210, 680);

    	
    textAlign(RIGHT, CENTER);
    textFont(garamond);
    text("May 2026-Present", 1300,170);
    text("August 2023-August 2026", 1300, 280);
    text("February 2026-May 2026", 1300,390);
    text("September 2025-May 2026", 1300, 500);
    text("January 2023-June 2024", 1300, 610);

    
}

void drawGames(){
    textAlign(CENTER,CENTER);
    textFont(pressStart);
    textSize(25);
    fill(207, 14, 165);
    text("GAMES", 625,100);
    fill(0);  
    text("EXPERIENCE", 325,100);
    if(mouseX > 200 && mouseX < 450 && mouseY > 85 && mouseY < 110){
        fill(207, 14, 165);
        text("EXPERIENCE", 325,100);

    }
    fill(0);
    text("PROJECTS", 925,100);
    if(mouseX > 822 && mouseX < 1020 && mouseY > 85 && mouseY < 110){
        fill(207,14,165);
        text("PROJECTS", 925, 100);
    }
    fill(0);
    text("SKILLS", 1225,100);
    if(mouseX > 1150 && mouseX < 1300 && mouseY > 85 && mouseY < 110){
        fill(207, 14, 165);
        text("SKILLS", 1225,100);
    }
    fill(0);
    line(180,130,1320,130);
    stroke(207, 14, 165);
    strokeWeight(4);
    line(480,130,750,130);
    stroke(0);
    strokeWeight(8);
    rect(200,150,500,300);
    rect(800,150,500,300);
    image(SK,200,150,500,300);
    image(SB,800,150,500,300);
    textAlign(LEFT,CENTER);
    textSize(25);
    text("SUDOKU", 200, 480);
    if(mouseX > 200 && mouseX < 350 && mouseY > 460 && mouseY < 520){
        fill(207, 14, 165);
        text("SUDOKU", 200, 480);
    }
    fill(0);
    text("KRABBY PATTY CATCHER", 800,480);
    if(mouseX > 800 && mouseY < 1300 && mouseY> 460 && mouseY < 520){
        fill(207, 14, 165);
        text("KRABBY PATTY CATCHER", 800,480);
    }
    fill(0);
    textSize(10);
    text("My favorite game to play in my free time!", 200, 510);
    text("Collect the falling krabby patties!", 800, 510);
    textSize(20);
    text("More coming soon!", 600,625);

}

void drawProjects(){
    textAlign(CENTER,CENTER);
    textFont(pressStart);
    textSize(25);
    fill(207, 14, 165);
    text("PROJECTS", 925,100);
    fill(0);
    text("GAMES", 625,100);
    if(mouseX > 560 && mouseX < 685 && mouseY > 85 && mouseY < 110){
        fill(207,14,165);
        text("GAMES", 625, 100);
    }
    fill(0);
    text("EXPERIENCE", 325,100);
    if(mouseX > 200 && mouseX < 450 && mouseY > 85 && mouseY < 110){
        fill(207, 14, 165);
        text("EXPERIENCE", 325,100);
    }
    fill(0);
    text("SKILLS", 1225,100);
    if(mouseX > 1150 && mouseX < 1300 && mouseY > 85 && mouseY < 110){
        fill(207, 14, 165);
        text("SKILLS", 1225,100);
    }
    fill(0);
    line(180,130,1320,130);
    stroke(207, 14, 165);
    strokeWeight(4);
    line(750,130,1100,130);

    fill(0);
    noFill();
    strokeWeight(1);
    rect(200,150,340,275);
    rect(200,455,340,275);
    rect(580,150,340,275);
    rect(580,455,340,275);
    rect(960,150,340,275);
    rect(960,455,340,275);

    textAlign(LEFT,CENTER);
    garamond = createFont("Garamond",25);
    textFont(garamond);
    textSize(40);
    fill(0);
    text("Portfolio", 210,170);
    textSize(20);
    fill(207, 14, 165);
    text("Personal Project", 210, 200);
    textSize(25);
    fill(0);
    text("Home of my frontend and game \ndevelopment skills", 210, 250);
    fill(133, 133, 133);
    text("TOOLS: React, p5.js", 210, 330);
    text("LANGUAGES: JavaScript, CSS, \n                     HTML, Processing", 210, 390);

    textSize(20);
    fill(0);
    text("AI Horror Story", 590,170);
    textSize(10);
    fill(207, 14, 165);
    text("Digital Games and Gaming Culture", 590, 190);
    textSize(15);
    fill(0);
    text("Interactive horror \nwalkthrough game that \ncommentates on the \ndangers of AI", 590, 260);
    fill(133, 133, 133);
    text("TOOLS: Twine", 590, 340);
    text("LANGUAGES: CSS", 590, 380);

    textSize(18);
    fill(0);
    text("Oscars Predication", 970,170);
    text("Algorithm", 970,190);
    textSize(10);
    fill(207, 14, 165);
    text("Statistical Modeling ", 970, 210);
    textSize(15);
    fill(0);
    text("Derived a GLM and \nperformed stepwise \nprediction to \ncorrectly predict the \n2025 Best Picture \nwinner", 970, 295);
    fill(133, 133, 133);
    text("TOOLS: RStudio", 970, 380);
    text("LANGUAGES: R", 970, 410);

    textAlign(LEFT,CENTER);
    textSize(20);
    fill(0);
    text("Smart Pantry", 210,475);
    textSize(10);
    fill(207, 14, 165);
    text("Capstone for Software Engineering", 210, 495);
    textSize(15);
    fill(0);
    text("Web grocery tracking \napp created in a group \nof 4 to help \nreduce food waste", 210, 550);
    fill(133, 133, 133);
    text("TOOLS: React + Vite", 210, 650);
    text("LANGUAGES: JavaScript, \n            CSS, HTML", 210, 700);

    textAlign(LEFT,CENTER);
    textSize(20);
    fill(0);
    text("Receipe Book", 590,475);
    textSize(10);
    fill(207, 14, 165);
    text("Fundamentals of Software \nEngineering", 590, 505);
    textSize(15);
    fill(0);
    text("Web based receipe book \nused for searching, \nsaving, and creating \nreceipes all in one \nplace", 590, 580);
    fill(133, 133, 133);
    text("TOOLS: React + Vite", 590, 665);
    text("LANGUAGES: JavaScript, \n            CSS, HTML", 590, 700);

    textAlign(LEFT,CENTER);
    textSize(17);
    fill(0);
    text("Diagnosis Predictor", 970,475);
    textSize(10);
    fill(207, 14, 165);
    text("Numerical Methods and \nBig Data", 970, 505);
    textSize(15);
    fill(0);
    text("Given a dataset of \nvarious medical \nsymptoms, my group \nand I used regression \nwith clustering to \npredict patients' \nmedical diagnosis", 970, 595);
    fill(133, 133, 133);
    text("TOOLS: Spyder", 970, 700);
    text("LANGUAGES: Python", 970, 720);



}

void drawSkills(){
    textAlign(CENTER,CENTER);
    textFont(pressStart);
    textSize(25);
    fill(207, 14, 165);
    text("SKILLS", 1225,100);
    fill(0);
    text("GAMES", 625,100);
    if(mouseX > 560 && mouseX < 685 && mouseY > 85 && mouseY < 110){
        fill(207,14,165);
        text("GAMES", 625, 100);
    }
    fill(0);
    text("EXPERIENCE", 325,100);
    if(mouseX > 200 && mouseX < 450 && mouseY > 85 && mouseY < 110){
        fill(207, 14, 165);
        text("EXPERIENCE", 325,100);
    }
    fill(0);
    text("PROJECTS", 925,100);
    if(mouseX > 822 && mouseX < 1020 && mouseY > 85 && mouseY < 110){
        fill(207,14,165);
        text("PROJECTS", 925, 100);
    }
    fill(0);
    line(180,130,1320,130);
    stroke(207, 14, 165);
    strokeWeight(4);
    line(1100,130,1320,130);
    image(java,220,165,250,126);
    image(js,220,306,250,126);
    image(python, 220, 447, 250, 126);
    image(html, 220, 588, 250, 126);

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
    fill(255,0,0);
    circle(50,750,20);

    stroke(0,0,0);
    line(1400,50,1450,50);
    line(1400,60,1450,60);
    line(1400,70,1450,70);

    noFill();
    stroke(0,0,0);
    ellipse(735,770,20,20);
    ellipse(735,770,10,10);
    ellipse(765,770,20,20);
    fill(0);
    ellipse(765,770,10,10);
    
    
    image(qmIM, 1285,755,30,30);

    textAlign(CENTER,CENTER);
    pressStart = createFont("Press Start 2P", 10);
    textFont(pressStart);
    fill(0,0,0);
    text("Power",90,750);

    

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

    if(mouseX > 200 && mouseX < 450 && mouseY > 85 && mouseY < 110){
        menuOption = 0;

    }

    if(mouseX > 560 && mouseX < 685 && mouseY > 85 && mouseY < 110){
        menuOption = 1;

    }

 
    if(mouseX > 822 && mouseX < 1020 && mouseY > 85 && mouseY < 110){
        menuOption = 2;
    }

    if(mouseX > 1150 && mouseX < 1300 && mouseY > 85 && mouseY < 110){
        menuOption = 3;
    }


}


