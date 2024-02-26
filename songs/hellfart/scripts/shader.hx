var coolShader = new CustomShader('lowquality');

function create() {
  FlxG.game.addShader(coolShader);
}

function destroy() {
  FlxG.game.removeShader(coolShader);
}