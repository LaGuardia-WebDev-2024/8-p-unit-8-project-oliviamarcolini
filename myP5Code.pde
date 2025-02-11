
//🟢setup Function - will run once
setup = function() {
  size(600, 400);   
  };
  
var sharkMove = 0;
var sharkMove2 = 0;
var fishShowPurple = 0;
var fishShowGreen = 0;
var fishShowPink = 0;
var sharkShow = 0;

//🟢draw Function - will run on repeat
draw = function(){
 background(120, 198, 222);

  //sand
  noStroke();
  fill(237, 222, 180);
  ellipse(300, 380, 500, 100);
  ellipse(127, 355, 160, 80);
  ellipse(244, 360, 190, 80);
  ellipse(510, 350, 300, 150);
  
  //pufferfish
  var pufferX = 190
  var pufferY = 173
  textSize(110);
  fill(255, 247, 102);
  text("✹", 190, 173);
  stroke(0,0,0);
  strokeWeight(10);
  point(pufferX + 32, pufferY - 41);
  point(pufferX + 53, pufferY - 41);
  
  drawSeaWeed(90, 330);
  drawSeaWeed(50, 320);
  drawSeaWeed(10, 334);

  if(fishShowPurple == 0){
  drawFish(322, 198, color(159, 107, 255));
  };
  
  if(fishShowGreen == 0){
  drawFish(437, 60, color(108, 237, 107));
  };
  
  if(fishShowPink == 0){
  drawFish(282, 238, color(255, 107, 139));
  };
  
  //starfish
  textSize(60);
  fill(255, 166, 102);
  text("★", 375, 356);
  
  //shell
  textSize(40);
  fill(143, 174, 227);
  text("꩜", 200, 386);
  
  drawCoral(463, 213, color(240, 125, 110));
  
  sharkMove = mouseX - 200;
  sharkMove2 = mouseY - 150;
  
  if(sharkShow == 0){
  //shark
  fill(150, 176, 176);
  noStroke();
  ellipse(sharkMove + 315, sharkMove2 + 146, 200, 60);
  triangle(sharkMove + 290, sharkMove2 + 121, sharkMove + 338, sharkMove2 + 89, sharkMove + 343, sharkMove2 + 117);
  triangle(sharkMove + 390, sharkMove2 + 144, sharkMove + 445, sharkMove2 + 144, sharkMove + 473, sharkMove2 + 114);
  triangle(sharkMove + 390, sharkMove2 + 144, sharkMove + 445, sharkMove2 + 144, sharkMove + 473, sharkMove2 + 174);
  triangle(sharkMove + 250, sharkMove2 + 163, sharkMove + 290, sharkMove2 + 169, sharkMove + 290, sharkMove2 + 190);
  triangle(sharkMove + 378, sharkMove2 + 163, sharkMove + 400, sharkMove2 + 168, sharkMove + 390, sharkMove2 + 175);
  fill(200, 200, 200);
  ellipse(sharkMove + 315, sharkMove2 + 159, 175, 30);
  strokeWeight(10);
  stroke(0, 0, 0);
  point(sharkMove + 234, sharkMove2 + 142);
  stroke(120, 120, 120);
  strokeWeight(4);
  line(sharkMove + 275, sharkMove2 + 165, sharkMove + 279, sharkMove2 + 146);
  line(sharkMove + 267, sharkMove2 + 161, sharkMove + 273, sharkMove2 + 144);
  line(sharkMove + 260, sharkMove2 + 157, sharkMove + 266, sharkMove2 + 145)
  }
  
  drawCoral(100, 250, color(148, 255, 219));
  drawCoral(510, 260, color(221, 148, 255));
  
  //bubbles
  stroke(255, 255, 255, 70);
  strokeWeight(25);
  point(327, 139);
  point(161, 62);
  point(550, 167);
  strokeWeight(15);
  point(307, 110);
  point(379, 125);
  point(102, 103);
  point(215, 266);
  point(360, 231);
  point(521, 134);
  strokeWeight(7);
  point(146, 92);
  point(184, 244);
  point(364, 29);
  point(506, 200);
  point(443, 158);
  
  //pebbles
  stroke(189, 143, 108, 70);
  strokeWeight(25);
  
  //text appear
  var cPurple = color(159, 107, 255);
  var cYellow = color(255, 247, 102);
  var cOrange = color(255, 166, 102);
  var cPink = color(255, 107, 139);
  var cGreen = color(108, 237, 107);
  var sharkPosition = get(mouseX, mouseY);
  
  //when shark eats purple fish
  if(sharkPosition == cPurple) {
  console.log("i here")
  fishShowPurple = 1;
  };
  
  //when shark eats pink fish
  if(sharkPosition == cPink) {
  fishShowPink = 1;
  }
  
  //when shark eats green fish
  if(sharkPosition == cGreen) {
  fishShowGreen = 1;
  }
  
  //when shark eats puffer fish
  if(sharkPosition == cYellow) {
  textSize(20);
  fill(255, 247, 102);
  text("Oh nooo, poison!!!!", 160, 80);
  sharkShow = 1;
  };
  
  //when shark touches star
  if(sharkPosition == cOrange) {
  textSize(20);
  fill(255, 166, 102);
  text("Pretty", 280, 300);
  };
};



//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
 
}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  noStroke();
  fill(fishColor);
  ellipse(fishX, fishY, 60, 30);
  triangle(fishX + 23, fishY, fishX + 43, fishY - 13, fishX + 43, fishY + 15);
  stroke(0,0,0);
  strokeWeight(7);
  point(fishX - 17, fishY - 2);
};

//drawCoral Function
var drawCoral = function(coralX, coralY, coralColor){
  strokeWeight(15);
  stroke(coralColor);
  line(coralX, coralY, coralX - 10, coralY + 87);
  line(coralX - 5, coralY + 24, coralX - 48, coralY + 2);
  line(coralX - 1, coralY + 47, coralX + 21, coralY + 35);
  line(coralX - 19, coralY + 13, coralX - 30, coralY - 7);
  line(coralX - 10, coralY + 26, coralX - 24, coralY + 37);
  line(coralX - 24, coralY + 17, coralX - 50, coralY + 21);
  line(coralX, coralY - 1, coralX + 20, coralY - 19);
  line(coralX + 1, coralY - 4, coralX - 8, coralY - 20);
  line(coralX + 22, coralY + 35, coralX + 19, coralY + 14);
  line(coralX + 22, coralY + 35, coralX + 41, coralY + 43);
  line(coralX + 22, coralY + 35, coralX + 21, coralY + 59);
  line(coralX + 23, coralY + 34, coralX + 38, coralY + 22);
  line(coralX - 9, coralY + 70, coralX - 44, coralY + 49);
  line(coralX - 29, coralY + 58, coralX - 39, coralY + 71);
};

//drawSeaWeed Function
var drawSeaWeed = function(seaweedX, seaweedY){
textSize(400);
fill(196, 245, 159);
text("≀", seaweedX, seaweedY);
};

