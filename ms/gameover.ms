gameOver = function()
  //lvl = 0
  if keyboard.press.SPACE then
    init()
    mode = "title"
   p1life = 3
   p2life = 3
   pineHit = 0
   oakHit = 0
  end
end

drawGameOver = function()

    screen.drawSprite("door.1",0,0,350,200)
    if p2life < 1 then
        screen.drawSprite("pine", 0,0,150,120)
      screen.setAlpha(getFlashValue())
  screen.drawText("Pine is the TreeLion!",0, -75,20, "#FFF")
  screen.setAlpha(1)
  screen.drawText("press space to play again",0, 75,20, "#FFF")
    elsif p1life < 1 then
        screen.drawSprite("oak", 0,0,150,120)
      screen.setAlpha(getFlashValue())
  screen.drawText("Oak is the TreeLion!",0, -75,20, "#FFF")
  screen.setAlpha(1)
  screen.drawText("press space to play again",0, 75,20, "#FFF") 
  
  
  end
  end