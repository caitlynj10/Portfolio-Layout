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
PImage css;
PImage r;
PImage processing;
PImage rStudio;
PImage react;
PImage twine;
PImage spyder;
PImage vite;
PImage p5;
PImage githubFull;
PImage google;
PImage microsoft;
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
    css = loadImage("css.png");
    r = loadImage("r.png");
    processing = loadImage("processing.png");
    rStudio = loadImage("r studio.png");
    react = loadImage("react.png");
    twine = loadImage("twine.png");
    spyder = loadImage("spyder.png");
    vite = loadImage("vite.png");
    p5 = loadImage("p5.png");
    githubFull = loadImage("githubFull.png");
    google = loadImage("google.png");
    microsoft = loadImage("microsoft.png");

    contactOpen = false;
    menuOption = 2;

    

   
}

void draw(){
    drawBackground();
    drawScreen();
    drawControls();
    
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
    if(menuOption == 0){
        fill(255);
    }
    else if(menuOption == 3){
        fill(255);
    }
    else if(menuOption == 1){
        fill(0);
    }
    else if(menuOption == 2){
        fill(255, 240, 249);
    }
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
    fill(255);  
    text("EXPERIENCE", 325,100);
    if(mouseX > 200 && mouseX < 450 && mouseY > 85 && mouseY < 110){
        fill(207, 14, 165);
        text("EXPERIENCE", 325,100);

    }
    fill(255);
    text("PROJECTS", 925,100);
    if(mouseX > 822 && mouseX < 1020 && mouseY > 85 && mouseY < 110){
        fill(207,14,165);
        text("PROJECTS", 925, 100);
    }
    fill(255);
    text("SKILLS", 1225,100);
    if(mouseX > 1150 && mouseX < 1300 && mouseY > 85 && mouseY < 110){
        fill(207, 14, 165);
        text("SKILLS", 1225,100);
    }
    stroke(255);
    line(180,130,1320,130);
    stroke(207, 14, 165);
    strokeWeight(4);
    line(480,130,750,130);
    stroke(0);
    strokeWeight(4);
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
    fill(255);
    text("KRABBY PATTY CATCHER", 800,480);
    if(mouseX > 800 && mouseY < 1300 && mouseY> 460 && mouseY < 520){
        fill(207, 14, 165);
        text("KRABBY PATTY CATCHER", 800,480);
    }
    fill(255);
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

    stroke(207, 14, 165);
    strokeWeight(1);
    line(210,220, 530, 220);
    line(210,550, 530, 550);
    line(590,220, 910, 220);
    line(590,525, 910, 525);
    line(970,220, 1290, 220);
    line(970,525, 1290, 525);



    textAlign(LEFT,CENTER);
    garamond = createFont("Garamond", 40);
    textFont(garamond);
    fill(0);
    text("Portfolio", 210,170);
    textSize(20);
    fill(133, 133, 133);
    text("Personal Project", 210, 200);
    textSize(25);
    fill(0);
    text("Online portfolio showcasing my \nfrontend and game development \nskills, featuring games and \nprojects", 210, 290);
    fill(207, 14, 165);
    textSize(15);
    text("TOOLS: React, p5.js", 210, 385);
    text("LANGUAGES: JavaScript, CSS, HTML, Processing", 210, 405);


    textSize(40);
    fill(0);
    text("Smart Pantry", 590,170);
    textSize(20);
    fill(133, 133, 133);
    text("Capstone for Software Engineering", 590, 200);
    textSize(25);
    fill(0);
    text("Created an interactive grocery \ntracking web app that manages \npantry inventory and helps to \nreduce food waste", 590, 290);
    fill(207, 14, 165);
    textSize(15);
    text("TOOLS: React + Vite", 590, 385);
    text("LANGUAGES: JavaScript, CSS, HTM", 590, 405);


    textSize(40);
    fill(0);
    text("AI Horror Story", 970,170);
    textSize(20);
    fill(133, 133, 133);
    text("Digital Games and Gaming Culture", 970, 200);
    textSize(25);
    fill(0);
    text("Interactive horror walkthrough \ngame that serves as a social \ncommentary on the dangers \nof AI", 970, 290);
    fill(207, 14, 165);
    textSize(15);
    text("TOOLS: Twine", 970, 385);
    text("LANGUAGES: CSS", 970, 405);

    textAlign(LEFT,CENTER);
    textSize(40);
    fill(0);
    text("Oscars Predication", 210,475);
    text("Algorithm", 210, 505);
    textSize(20);
    fill(133,133,133);
    text("Statistical Modeling", 210, 535);
    textSize(22);
    fill(0);
    text("Derived a generalized linear model \nand used a stepwise prediction \nalgorithm to correctly predict \nthe 2025 Best Picture winner", 210, 605);
    fill(207, 14, 165);
    textSize(15);
    text("TOOLS: RStudio", 210, 690);
    text("LANGUAGES: R", 210, 710);
    
    textAlign(LEFT,CENTER);
    textSize(40);
    fill(0);
    text("Receipe Book", 590,475);
    textSize(20);
    fill(133,133,133);
    text("Fundamentals of Software Engineering", 590, 505);
    textSize(25);
    fill(0);
    text("Web based receipe book that \nallows users to search, save, and \ncreate receipes all in one place", 590, 595);
    fill(207, 14, 165);
    textSize(15);
    text("TOOLS: React + Vite", 590, 690);
    text("LANGUAGES: JavaScript, CSS, HTML", 590, 710);

    textAlign(LEFT,CENTER);
    textSize(40);
    fill(0);
    text("Diagnosis Predictor", 970,475);
    textSize(20);
    fill(133, 133, 133);
    text("Numerical Methods and Big Data", 970, 505);
    textSize(22);
    fill(0);
    text("Given a dataset of various medical \nsymptoms, my group and I used \nregression with clustering to predict \npatients' medical diagnosis", 970, 600);
    fill(207, 14, 165);
    textSize(15);
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
    image(css, 490, 165, 250, 126);
    image(r, 490,306,250,126);
    image(processing, 490, 447, 250, 126);
    image(githubFull, 490, 588, 250, 126);
    image(react, 760, 165, 250, 126);
    image(vite, 760, 306, 250, 126);
    image(p5, 760, 447, 250, 126);
    image(rStudio, 760, 588, 250, 126);
    image(twine, 1030, 165, 250, 126);
    image(spyder, 1030, 306, 250, 126);
    image(microsoft, 1030, 447, 250, 126);
    image(google, 1030, 588, 250, 126);

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


