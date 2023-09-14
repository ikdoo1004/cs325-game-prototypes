init = function()
 my_music = audio.playMusic("track1",.3,1)
  //my_music.setVolume(1)
  
   menu = object
     items = [
       "Start Game",
       "How to Play"
       "Game Story"
       "Exit"
       ]
       cursor = 0
   end
     
   // cpu = object
    // action = [
    //   "action1",
    //   "action2",
    //   "action3",
    //   ]
    //   cpuAction = []
   //end
     
  mode = "title"
  //mode = "play"
  //initCamera()

  pine = object
    x = -50
    y = -40
    speed = .6
  end
  
    oak = object
      x = 50
      y = -40
      speed = .6
    end
    delay = 5
    //startTimer = 5
    oak_Punch_timer = 0
    oak_Kick_timer = 0
    oak_Walk_timer = 0
    oak_Back_timer = 0
    
    
    pine_Punch_timer = 0
    pine_Kick_timer = 0
    pine_Walk_timer = 0
    pine_Back_timer = 0
    clock = 3
    turnTimer = 7
    
    p1life = 3
    p2life = 3
    //pineHit = 0
    
    
end


update = function()
  
  if mode == "title" then
    
    updateTitleScreen()
  elsif mode == "play" then
    
      game()
      if oak_Punch_timer > 0 then
          oak_Punch_timer -= 1/5
          if oak_Punch_timer < 0 then 
            oak_Punch_timer = 0
          end
      end
      
       if oak_Kick_timer > 0 then
          oak_Kick_timer -= 1/5
          if oak_Kick_timer < 0 then 
            oak_Kick_timer = 0
          end
       end
    
     if pine_Punch_timer > 0 then
          pine_Punch_timer -= 1/5
          if pine_Punch_timer < 0 then 
            pine_Punch_timer = 0
          end
      end
      
       if pine_Kick_timer > 0 then
          pine_Kick_timer -= 1/5
          if pine_Kick_timer < 0 then 
            pine_Kick_timer = 0
          end
       end
    //SINGLE PLAYER
    //  updateCamera()
  elsif mode == "gameOver" then 
    gameOver()
  end
end


draw = function()
  screen.clear()
  
  if mode == "title" then
    drawTitleScreen()
  elsif mode == "play" then
    drawGame()
  elsif mode == "gameOver" then
   drawGameOver()
  elsif mode == "exit" then
   return 0
  end
  
end