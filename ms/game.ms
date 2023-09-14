game = function()

if p1life == 0 or p2life == 0 then
  mode = "gameOver"
  end

  
if keyboard.W and pine_Punch_timer == 0 and pine_Kick_timer == 0 and pineHit == 0 and pinePush == 0 then
  pine_Punch_timer = 2
  checkCollisionspinePunch()
  end

if keyboard.S and pine_Kick_timer == 0 and pine_Punch_timer == 0 and pineHit == 0 and pinePush == 0 and delay <= 0  then
  delay = 4
  pine_Kick_timer = 6
  checkCollisionspineKick()
 
  
end

  if delay > 0 then
     delay -= 1/20
  if delay < 0 then
    delay = 0 
  end
  end
  
if keyboard.D and pine_Punch_timer == 0 and pine_Kick_timer == 0 and pineHit == 0 and pinePush == 0 then
  pine.x += pine.speed
  checkCollisionspineWalk()
  end
if keyboard.A and pine_Punch_timer == 0 and pine_Kick_timer == 0 then
  pine.x -= pine.speed 
  
end

if  keyboard.ARROW_UP and oak_Punch_timer == 0 and oak_Kick_timer == 0 and oakHit == 0 and oakPush == 0 then
oak_Punch_timer = 2
checkCollisionsoakPunch()
end
  
if  keyboard.ARROW_DOWN and oak_Kick_timer == 0 and oak_Punch_timer == 0 and oakHit == 0 and oakPush == 0 and oak_delay <= 0 then
  oak_delay = 4
  oak_Kick_timer = 6
  checkCollisionsoakKick()
end

if oak_delay > 0 then
     oak_delay -= 1/20
  if oak_delay < 0 then
    oak_delay = 0 
  end
  end


  if keyboard.ARROW_RIGHT and oak_Punch_timer == 0 and oak_Kick_timer == 0  then
    oak.x += oak.speed
    end
  if keyboard.ARROW_LEFT and oak_Punch_timer == 0 and oak_Kick_timer == 0 and oakHit == 0 and oakPush == 0 then
    oak.x -= oak.speed 
    checkCollisionsoakWalk()
  end
  
  if pineHit > 0 then
    pineHit -= 1/30
    if pineHit < 0 then
      pineHit = 0
      end
  end
  
   if pinePush > 0 then
    pinePush -= 1/30
    if pinePush < 0 then
      pinePush = 0
      end
    end
  
    if oakHit > 0 then
    oakHit -= 1/30
    if oakHit < 0 then
      oakHit = 0
      end
  end
  
   if oakPush > 0 then
    oakPush -= 1/30
    if oakPush < 0 then
      oakPush = 0
      end
    end
  
  if oakHit > 0 then
    oakHit -= 1/30
    if oakHit < 0 then
      oakHit = 0
      end
  end
  
   if oakPush > 0 then
    oakPush -= 1/30
    if oakPush < 0 then
      oakPush = 0
      end
    end
  
    if pineHit > 0 then
    pineHit -= 1/30
    if pineHit < 0 then
      pineHit = 0
      end
  end
  
   if pinePush > 0 then
    pinePush -= 1/30
    if pinePush < 0 then
      pinePush = 0
      end
    end
  
  pine.x = clamp(pine.x, -170,160)
  oak.x = clamp(oak.x, -160,170)
end

  

drawGame = function()
  screen.drawSprite("stage", 0,0,512,300)
 
   if p1life == 3 then
  screen.drawSprite("heart",-130,70,20,20)
  screen.drawSprite("heart",-150,70,20,20)
  screen.drawSprite("heart",-110,70,20,20)
  end
  
  if p1life == 2 then
  screen.drawSprite("heart",-130,70,20,20)
  screen.drawSprite("heart",-150,70,20,20)
 // screen.drawSprite("heart",-130,70,20,20)
  end
  
  if p1life == 1 then
  //screen.drawSprite("heart",-150,70,20,20)
  screen.drawSprite("heart",-150,70,20,20)
  //screen.drawSprite("heart",-130,70,20,20)
  end
  
  if p2life == 3 then
  screen.drawSprite("heart",130,70,20,20)
  screen.drawSprite("heart",150,70,20,20)
  screen.drawSprite("heart",110,70,20,20)
  end
  
  if p2life == 2 then
  screen.drawSprite("heart",130,70,20,20)
  screen.drawSprite("heart",150,70,20,20)
 // screen.drawSprite("heart",-130,70,20,20)
  end
  
  if p2life == 1 then
  //screen.drawSprite("heart",-150,70,20,20)
  screen.drawSprite("heart",150,70,20,20)
  //screen.drawSprite("heart",-130,70,20,20)
  end
  
  
  //oak ACTIONS
    if oak_Punch_timer > 0 and oak_Kick_timer == 0 then
  oakPunch()
  
    elsif oak_Kick_timer > 0 and oak_Punch_timer == 0 then
      //screen.drawSprite("oak_kick",oak.x,oak.y,84, 74)
      oakKick()
      
    elsif keyboard.ARROW_RIGHT and oak_Punch_timer == 0 and oak_Kick_timer == 0 and oakHit == 0 then
      screen.drawSprite("oak_back",oak.x,oak.y,84, 74)
      
    elsif keyboard.ARROW_LEFT and oak_Punch_timer == 0 and oak_Kick_timer == 0 and oakHit == 0 then
      screen.drawSprite("oak_walk",oak.x,oak.y,84, 74)
      
    
   
    elsif oakHit == 0 and oakPush == 0 then
      screen.drawSprite("oak_idol", oak.x,oak.y,84,74)
      
    elsif oakHit > 0 then
      screen.drawSprite("oak_hit",oak.x,oak.y,84,74)
    elsif oakPush > 0 then
      screen.drawSprite("oak_hit",oak.x,oak.y,84,74)
      
    end
    
    //pine ACTIONS
    if pine_Punch_timer > 0 and pine_Kick_timer == 0 then
      pinePunch()
    
    elsif pine_Kick_timer > 0 and pine_Punch_timer == 0 then
      pineKick()
    
    elsif keyboard.D and pineHit == 0 then
      screen.drawSprite("pine_walk",pine.x,pine.y,84, 74)
    
      elsif keyboard.A and pineHit == 0 then
      screen.drawSprite("pine_back",pine.x,pine.y,84, 74)
    elsif pineHit == 0 and pinePush == 0 then
      screen.drawSprite("pine_idol", pine.x,pine.y,84,74)
      
    elsif pineHit > 0 then
      screen.drawSprite("pine_hit",pine.x,pine.y,84,74)
    elsif pinePush > 0 then
      screen.drawSprite("pine_hit",pine.x,pine.y,84,74)
      
    end
    
  
  
  
    
end  



