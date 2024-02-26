
var wall:FlxSprite;

function create(){
    bg = new FlxSprite(0, 0);
    bg.frames = Paths.getSparrowAtlas('stages/sanctuary/pigstage');
    bg.animation.addByPrefix('wave', 'pigstage wave', 24, true);
    bg.animation.play('wave');
    bg.antialiasing = true;
    bg.setGraphicSize(Std.int(bg.width * 5.9));
    bg.scrollFactor.set(1, 1);
    bg.active = true;
    insert(members.indexOf(dad), bg);

    towers = new FlxSprite(-900, -900).loadGraphic(Paths.image('stages/sanctuary/towers'));
    towers.antialiasing = true;
    towers.scrollFactor.set(1, 1);
    towers.active = false;
    insert(members.indexOf(dad), towers);
    add(towers);
    
    floor = new FlxSprite(-900, 400).loadGraphic(Paths.image('stages/sanctuary/ground'));
    floor.antialiasing = true;
    floor.scrollFactor.set(1, 1);
    floor.active = false;
    floor.setGraphicSize(Std.int(floor.width * 1.4));
    insert(members.indexOf(dad), floor);
    add(floor);
}