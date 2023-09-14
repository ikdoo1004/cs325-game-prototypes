oakPunch = function()
  if oak_Punch_timer < 2 and oak_Punch_timer > 0.5 then
      screen.drawSprite("oak_punch.1",oak.x,oak.y,84, 74)
      
    elsif oak_Punch_timer < 2 and oak_Punch_timer > 0 then
      screen.drawSprite("oak_punch.0",oak.x,oak.y,84, 74)

    end
end

oakKick = function()
  if oak_Kick_timer < 6 and oak_Kick_timer > 5 then
      screen.drawSprite("oak_kick.0",oak.x,oak.y,84, 74)
      
    elsif oak_Kick_timer < 5 and oak_Kick_timer > 4 then
      screen.drawSprite("oak_kick.1",oak.x,oak.y,84, 74)
      //checkCollisionsoakKick()
    elsif oak_Kick_timer < 4 and oak_Kick_timer > 3 then
      screen.drawSprite("oak_kick.2",oak.x,oak.y,84, 74)
    elsif oak_Kick_timer < 3 and oak_Kick_timer > 2 then
      screen.drawSprite("oak_kick.3",oak.x,oak.y,84, 74)
    elsif oak_Kick_timer < 2 and oak_Kick_timer > 1 then
      screen.drawSprite("oak_kick.4",oak.x,oak.y,84, 74)
      //checkCollisionsoakKick()
    elsif oak_Kick_timer < 1 and oak_Kick_timer > 0 then
      screen.drawSprite("oak_kick.5",oak.x,oak.y,84, 74)
    end
    
end
//pine ACTION
pinePunch = function()
  if pine_Punch_timer < 2 and pine_Punch_timer > 0.5 then
      screen.drawSprite("pine_punch.1",pine.x,pine.y,84, 74)
      
    elsif pine_Punch_timer < 2 and pine_Punch_timer > 0 then
      screen.drawSprite("pine_punch.0",pine.x,pine.y,84, 74)
    end
end

pineKick = function()
  if pine_Kick_timer < 6 and pine_Kick_timer > 5 then
      screen.drawSprite("pine_kick.0",pine.x,pine.y,84, 74)
      
    elsif pine_Kick_timer < 5 and pine_Kick_timer > 4 then
      screen.drawSprite("pine_kick.1",pine.x,pine.y,84, 74)
      
    elsif pine_Kick_timer < 4 and pine_Kick_timer > 3 then
      screen.drawSprite("pine_kick.2",pine.x,pine.y,84, 74)
    elsif pine_Kick_timer < 3 and pine_Kick_timer > 2 then
      screen.drawSprite("pine_kick.3",pine.x,pine.y,84, 74)
    elsif pine_Kick_timer < 2 and pine_Kick_timer > 1 then
      screen.drawSprite("pine_kick.4",pine.x,pine.y,84, 74)
    elsif pine_Kick_timer < 1 and pine_Kick_timer > 0 then
      screen.drawSprite("pine_kick.5",pine.x,pine.y,84, 74)
    end
end
  
pineBack = function()
  
  if pine_Back_timer < 8 and pine_Back_timer > 7 then
      //oak.x -= .1
      screen.drawSprite("pine_back.0",pine.x,pine.y,84, 74)
      
  elsif pine_Back_timer < 7 and pine_Back_timer > 6 then
    pine.x -= .6
      screen.drawSprite("pine_back.1",pine.x,pine.y,84, 74)
      //where i left off
  elsif pine_Back_timer < 6 and pine_Back_timer > 5 then
    pine.x -= .6
      screen.drawSprite("pine_back.2",pine.x,pine.y,84, 74)
      
  elsif pine_Back_timer < 5 and pine_Back_timer > 4 then
    pine.x -= .6
      screen.drawSprite("pine_back.3",pine.x,pine.y,84, 74)
      
  elsif pine_Back_timer < 4 and pine_Back_timer > 3 then
    pine.x -= .6
      screen.drawSprite("pine_back.4",pine.x,pine.y,84, 74)
      
  elsif pine_Back_timer < 3 and pine_Back_timer > 2 then
    pine.x -= .6
      screen.drawSprite("pine_back.5",pine.x,pine.y,84, 74)
      
  elsif pine_Back_timer < 2 and pine_Back_timer > 1 then
    oak.x -= .6
      screen.drawSprite("pine_back.6",pine.x,pine.y,84, 74)
      
  elsif pine_Back_timer < 1 and pine_Back_timer > 0 then
      screen.drawSprite("pine_back.7",pine.x,pine.y,84, 74)
      
    
end
end

pineWalk = function()
  
  if pine_Walk_timer < 9 and pine_Walk_timer > 8 then

      screen.drawSprite("pine_walk.0",pine.x,pine.y,84, 74)
      
  elsif pine_Walk_timer < 8 and pine_Walk_timer > 7 and pineHit ==  0 then

    pine.x += .5
      screen.drawSprite("pine_walk.1",pine.x,pine.y,84, 74)
      
  elsif pine_Walk_timer < 7 and pine_Walk_timer > 6 and pineHit == 0 then

    pine.x += .5
      screen.drawSprite("pine_walk.2",pine.x,pine.y,84, 74)
      
  elsif pine_Walk_timer < 6 and pine_Walk_timer > 5 and pineHit == 0 then

    pine.x += .5
      screen.drawSprite("pine_walk.3",pine.x,pine.y,84, 74)
    
    
  elsif pine_Walk_timer < 5 and pine_Walk_timer > 4 and pineHit == 0 then

    pine.x += .5
      screen.drawSprite("pine_walk.4",pine.x,pine.y,84, 74)
      
  elsif pine_Walk_timer < 4 and pine_Walk_timer > 3 and pineHit == 0 then

    pine.x += .5
      screen.drawSprite("pine_walk.5",pine.x,pine.y,84, 74)
    
    
  elsif pine_Walk_timer < 3 and pine_Walk_timer > 2 and pineHit == 0 then

    pine.x += .5
      screen.drawSprite("pine_walk.6",pine.x,pine.y,84, 74)
    
    
  elsif pine_Walk_timer < 2 and pine_Walk_timer > 1 and pineHit == 0 then

      screen.drawSprite("pine_walk.7",pine.x,pine.y,84, 74)
      
  elsif pine_Walk_timer < 1 and pine_Walk_timer > 0 and pineHit == 0 then

      screen.drawSprite("pine_walk.8",pine.x,pine.y,84, 74)

    end
    
end