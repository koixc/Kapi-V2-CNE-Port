var crazy:CustomShader = null;

function create(){
crazy = new CustomShader("BWShader");
}

function stepHit()
{
  switch (curStep)
   {
     case 576:
    camGame.addShader(crazy);

     case 1440:
    camGame.removeShader(crazy);
    }
} 
