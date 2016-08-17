var tile1, tile2, tile3, tile4;


var mouse;

var selection1, selection2;

var coins = 0;

function setup() {
  selection1 = null;
  selection2 = null;
  createCanvas(500, 500);

  tile1 = createSprite(50, 100);
  tile2 = createSprite(100, 100, 20, 20);
  tile3 = createSprite(50, 150, 20, 20);
  tile4 = createSprite(100, 150, 20, 20);
  
  
  
  

  mouse = createSprite(0, 0, 15, 15);

  tile1.setCollider("rectangle", 0, 0, 20, 20);
  tile2.setCollider("rectangle", 0, 0, 20, 20);
  tile3.setCollider("rectangle", 0, 0, 20, 20);
  tile4.setCollider("rectangle", 0, 0, 20, 20);
  mouse.setCollider("rectangle", 0, 0, 15, 15);

  tile1.shapeColor = color(0);
  tile2.shapeColor = color(0);
  tile3.shapeColor = color(0);
  tile4.shapeColor = color(0);


}

function draw() {
  background(255);

  fill(0);
  textAlign(RIGHT);
  textSize(12);
  text("Coins: " + coins, width - 30, 30);

  mouse.position.x = mouseX;
  mouse.position.y = mouseY;
  mouse.visible = false;



  if (mouse.overlap(tile1) && selection1 == null) {
    tile1.shapeColor = color(0, 255, 0);
    selection1 = 1;
    tile1.setCollider("rectangle", 100, 100, 1, 1);
  } else if (mouse.overlap(tile1) && selection1 != null) {
    tile1.shapeColor = color(0, 255, 0);
    tile1.setCollider("rectangle", 100, 100, 1, 1);

    selection2 = 1;
  }

  if (mouse.overlap(tile2) && selection1 == null) {
    tile2.shapeColor = color(255, 0, 0);
    tile2.setCollider("rectangle", 100, 100, 1, 1);

    selection1 = 2;
  } else if (mouse.overlap(tile2) && selection1 != null) {
    tile2.shapeColor = color(255, 0, 0);
    tile2.setCollider("rectangle", 100, 100, 1, 1);

    selection2 = 2;
  }

  if (mouse.overlap(tile3) && selection1 == null) {
    tile3.shapeColor = color(0, 255, 0);
    tile3.setCollider("rectangle", 100, 100, 1, 1);

    selection1 = 1;
  } else if (mouse.overlap(tile3) && selection1 != null) {
    tile3.shapeColor = color(0, 255, 0);
    tile3.setCollider("rectangle", 100, 100, 1, 1);

    selection2 = 1;
  }

  if (mouse.overlap(tile4) && selection1 == null) {
    tile4.shapeColor = color(255, 0, 0);
    tile4.setCollider("rectangle", 100, 100, 1, 1);

    selection1 = 2;
  } else if (mouse.overlap(tile4) && selection1 != null) {
    tile4.shapeColor = color(255, 0, 0);
    tile4.setCollider("rectangle", 100, 100, 1, 1);

    selection2 = 2;
  }




  if (selection1 != null) {
    if (selection2 != null) {
      if (selection1 == selection2) {
        coins += 1;
        selection1 = null;
        selection2 = null;
        tile1.shapeColor = color(0);
        tile2.shapeColor = color(0);
        tile3.shapeColor = color(0);
        tile4.shapeColor = color(0);
        tile1.setCollider("rectangle", 0, 0, 20, 20);
        tile2.setCollider("rectangle", 0, 0, 20, 20);
        tile3.setCollider("rectangle", 0, 0, 20, 20);
        tile4.setCollider("rectangle", 0, 0, 20, 20);


      } else if (selection1 != selection2) {
        selection1 = null;
        selection2 = null;
        tile1.shapeColor = color(0);
        tile2.shapeColor = color(0);
        tile3.shapeColor = color(0);
        tile4.shapeColor = color(0);
        tile1.setCollider("rectangle", 0, 0, 20, 20);
        tile2.setCollider("rectangle", 0, 0, 20, 20);
        tile3.setCollider("rectangle", 0, 0, 20, 20);
        tile4.setCollider("rectangle", 0, 0, 20, 20);

      }
    }
  }

  console.log("selection1 :" + selection1);
  console.log("selection2 :" + selection2)

  drawSprites();
}