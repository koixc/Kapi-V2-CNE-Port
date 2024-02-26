
function create(){
    black = new FlxSprite(-600, -200).loadGraphic(Paths.image('stages/arcade/black'));
    black.antialiasing = true;
    black.scrollFactor.set(1, 1);
    black.active = false;
    black.alpha = 0;
    insert(members.indexOf(gf), black);

    black2 = new FlxSprite(-600, -200);
    black2.frames = Paths.getSparrowAtlas('stages/arcade/bgFreaks');
    black2.animation.addByPrefix('bop', 'Bottom Level Boppers', 24, false);
    black2.animation.play('bop');
    black2.antialiasing = true;
    black2.setGraphicSize(Std.int(black2.width * 1.3));
    black2.scrollFactor.set(1, 1);
    black2.alpha = 0;
    black2.active = true;
    insert(members.indexOf(gf), black2);

    black5 = new FlxSprite(-600, -230).loadGraphic(Paths.image('stages/arcade/floor'));
    black5.antialiasing = true;
    black5.scrollFactor.set(1, 1);
    black5.active = false;
    black5.alpha = 0;
    black5.setGraphicSize(Std.int(black5.width * 1.2));
    insert(members.indexOf(gf), black5);

    black3 = new FlxSprite(-600, -200);
    black3.frames = Paths.getSparrowAtlas('stages/arcade/upperBop');
    black3.animation.addByPrefix('bop', 'Upper Crowd Bob', 24, false);
    black3.animation.play('bop');
    black3.antialiasing = true;
    black3.setGraphicSize(Std.int(black3.width * 1.2));
    black3.scrollFactor.set(1, 1);
    black3.active = true;
    black3.alpha = 0;
    insert(members.indexOf(gf), black3);
    add(black3);

    money = new FlxSprite(400, 300);
    money.frames = Paths.getSparrowAtlas('stages/arcade/money');
    money.animation.addByPrefix('fall', 'money idle', 24, true);
    money.animation.play('fall');
    money.antialiasing = true;
    money.setGraphicSize(Std.int(money.width * 5.9));
    money.scrollFactor.set(0, 0);
    remove(money);
 }

 function beatHit() if (curBeat % 1 == 0) for (i in [black2, black3]) i.animation.play("bop");

function stepHit()
{
  switch (curStep)
   {
     case 576:
     black.alpha = 1;
     black2.alpha = 1;
     black3.alpha = 1;
     black5.alpha = 1;
     remove(timeBarBG);
     remove(timeBar);
     remove(timeTxt);
     remove(hudTxt);
     remove(iconP1);
     remove(iconP2);
     remove(healthBarBG);
     remove(healthBar);
     note.frames = Paths.getFrames("game/notes/WHITE-NOTE_assets");

     case 1440:
     black.alpha = 0;
     black2.alpha = 0;
     black3.alpha = 0;
     black5.alpha = 0;
     add(timeBarBG);
     add(timeBar);
     add(timeTxt);
     add(hudTxt);
     add(healthBarBG);
     add(healthBar);
     add(iconP1);
     add(iconP2);

     case 1728:
     add(money);
}   }
