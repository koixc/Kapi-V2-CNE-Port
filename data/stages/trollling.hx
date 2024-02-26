
var bg:FlxSprite;

function create(){
    bg = new FlxSprite(-600, -200).loadGraphic(Paths.image('stages/trollling/bg-white'));
    bg.antialiasing = true;
    bg.scrollFactor.set(1, 1);
    bg.active = false;
    add(bg);

    cat = new FlxSprite(200, 400).loadGraphic(Paths.image('stages/trollling/grey cat'));
    cat.antialiasing = true;
    cat.scrollFactor.set(1, 1);
    cat.active = false;
    add(cat);

    realbf = new FlxSprite(400, -100).loadGraphic(Paths.image('stages/trollling/blue hair'));
    realbf.antialiasing = true;
    realbf.setGraphicSize(Std.int(bg.width * 0.2));
    realbf.scrollFactor.set(1, 1);
    realbf.active = false;
    add(realbf);

    cam = new FlxSprite(200, -150).loadGraphic(Paths.image('stages/trollling/band'));
    cam.antialiasing = true;
    cam.setGraphicSize(Std.int(bg.width * 0.4));
    cam.scrollFactor.set(0, 0);
    cam.active = false;
    add(cam);
}

function stepHit() {
    remove(timeBarBG);
    remove(timeBar);
    remove(timeTxt);
    remove(hudTxt);
    remove(iconP1);
    remove(iconP2);
    remove(healthBarBG);
    remove(healthBar);
}