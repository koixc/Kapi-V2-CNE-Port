
var wall:FlxSprite;
var dvd:FlxSprite;
var freaks:FlxSprite;
var floor:FlxSprite;

function create(){
    wall = new FlxSprite(-600, -200).loadGraphic(Paths.image('stages/arcade/bg'));
    wall.antialiasing = true;
    wall.scrollFactor.set(1, 1);
    wall.active = false;
    insert(members.indexOf(gf), wall);
    add(wall);

    dvd = new FlxSprite(-600, -200);
    dvd.frames = Paths.getSparrowAtlas('stages/arcade/kapidvd');
    dvd.animation.addByPrefix('move', 'dvdmove', 24, true);
    dvd.animation.play('move');
    dvd.antialiasing = true;
    dvd.scrollFactor.set(1, 1);
    dvd.active = true;
    insert(members.indexOf(gf), dvd);
    add(dvd);

    freaks = new FlxSprite(-600, -200);
    freaks.frames = Paths.getSparrowAtlas('stages/arcade/bgFreaks');
    freaks.animation.addByPrefix('bop', 'Bottom Level Boppers', 24, false);
    freaks.animation.play('bop');
    freaks.antialiasing = true;
    freaks.setGraphicSize(Std.int(freaks.width * 1.3));
    freaks.scrollFactor.set(1, 1);
    freaks.active = true;
    insert(members.indexOf(gf), freaks);
    add(freaks);

    floor = new FlxSprite(-600, -230).loadGraphic(Paths.image('stages/arcade/floor'));
    floor.antialiasing = true;
    floor.scrollFactor.set(1, 1);
    floor.active = false;
    floor.setGraphicSize(Std.int(floor.width * 1.2));
    insert(members.indexOf(gf), floor);
    add(floor);

    upperBop = new FlxSprite(-600, -200);
    upperBop.frames = Paths.getSparrowAtlas('stages/arcade/upperBop');
    upperBop.animation.addByPrefix('bop', 'Upper Crowd Bob', 24, false);
    upperBop.animation.play('bop');
    upperBop.antialiasing = true;
    upperBop.setGraphicSize(Std.int(upperBop.width * 1.2));
    upperBop.scrollFactor.set(1, 1);
    upperBop.active = true;
    insert(members.indexOf(gf), upperBop);
    add(upperBop);
}

function beatHit() if (curBeat % 2 == 0) for (i in [freaks, upperBop]) i.animation.play("bop");