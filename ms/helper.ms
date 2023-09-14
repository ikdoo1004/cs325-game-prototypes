getFlashValue = function(seconds_per_flash = 1.5)
  return pow(cos(system.time()/1000*PI/seconds_per_flash), 2) * 0.6 + .4
end

 processMenuRequest = function(request)
   if request == "1P vs COM" then 
      
      if delay < 5 then
        delay -= 1/20
        if delay < 0 then
        mode = "play"
        elsif request == "1P vs 2P" then 
       if delay < 5 then
        delay -= 1/20
        if delay < 0 then
          mode = "play"
        elsif request == "How to Play" then
          cursor = 0
       end
        end
      end
      end
   end
end

checkCollisionsoakPunch = function()
  if distance(oak.x, oak.y, pine.x,pine.y) < 25  then
    audio.playSound("p_hit")
      pine.x -= 8
      pineHit = 1
      p1 = 0
      p2 = 0
      p3 = 0
      if mode == "play" then
      p1life -= 1
      end
  end
end

checkCollisionsoakKick = function()
  if distance(oak.x, oak.y, pine.x,pine.y) < 33  then
    audio.playSound("kick")
      pine.x -= 10
      pineHit = 1
      p1 = 0
      p2 = 0
      p3 = 0
      if mode == "play" then
      p1life -= 1
      end
  end
end

checkCollisionsoakWalk = function()
  if distance(oak.x, oak.y, pine.x,pine.y) < 10  then
    
      pine.x -= 8
      pinePush = 1
      p1 = 0
      p2 = 0
      p3 = 0
      //if mode == "play" then
      //p1life -= 1
      //end
  end
end



checkCollisionspinePunch = function()
  if distance(oak.x, oak.y, pine.x,pine.y) < 25  then
    audio.playSound("p_hit")
      oak.x += 8
      oakHit = 1
      c1 = 0
      c2 = 0
      c3 = 0
      if mode == "play" then
      p2life -= 1
      end
  end
end

checkCollisionspineKick = function()
  if distance(oak.x, oak.y, pine.x,pine.y) < 33  then
    audio.playSound("kick")
      oak.x += 10
      oakHit = 1
      c1 = 0
      c2 = 0
      c3 = 0
      if mode == "play" then
      p2life -= 1
      end
  end
end

checkCollisionspineWalk = function()
  if distance( pine.x,pine.y,oak.x, oak.y) < 10  then
      oak.x += 8
      oakPush = 1
      c1 = 0
      c2 = 0
      c3 = 0
      //p1life -= 1
  end
end

distance = function(x1, y1, x2, y2)
  local a = x2 - x1
  local b = y2 - y1
  local c = sqrt(pow(a, 2) + pow(b, 2))
  return c
end

clamp = function(value, lower_limit, upper_limit)
  local val = max(value, lower_limit)
  val = min(val, upper_limit)
  return val
end