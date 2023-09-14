 updateTitleScreen = function()
  howTo = false
  story = false
  exit = false
  Timer1 = new Timer(3)
 if keyboard.press.ENTER then
    delay = 4
    end
    if delay < 5 then
        delay -= 1/10
         if delay < 0 and menu.cursor == 0 then
        mode = "play"
        //delay = 4
         end
       if menu.cursor == 1 then
          howTo = true
          delay = 1
        end
        if menu.cursor == 2 then
          story = true
          delay = 1
        end
        if menu.cursor == 3 then
          exit = true
          delay = 1
        end
    end 
   if keyboard.ESCAPE then
     howTo = false
     story = false
     exit = false
     delay = 5
     end
    
  // processMenuRequest(menu.item[menu.cursor])
 if keyboard.press.DOWN then
   menu.cursor += 1
   if menu.cursor >= menu.items.length then
     menu.cursor = 0
   end
   end
 if keyboard.press.UP then
   menu.cursor -= 1
   if menu.cursor < 0 then
     menu.cursor = menu.items.length - 1
   end
 end
 
 
 
   // if keyboard.SPACE then
     // delay = 4
      //end
      //if delay < 5 then
      //  delay -= 1/20
      //  if delay < 0 then
      //  mode = "play"
        
    
  //end
   
 //end
 end
 
       
 drawTitleScreen = function()
   screen.setFont(" DigitalDisco") //Change font as you want Jamie
  // screen.fillRect(0,0, 356, 200, "rgba(0,0,0,0.7)")
   //screen.drawText("Super Ultra Fighter Alpha",0,60,30,"#FFF")
   local i = 0
   
  if delay == 5 then
    screen.drawSprite("stage",0,0,320,190)
  screen.drawSprite("door.1",0,0,350,200)
   //screen.fillRect(0,0, 356, 200, "rgba(0,0,0,0.7)")
   screen.drawText("TreeLion",0,50,22,"rgb(25,236,0)")
   local i = 0
   for item in menu.items
     if i == menu.cursor then
       screen.setAlpha(getFlashValue())
       screen.drawText(item,0,5-25*i,22,"rgb(27,176,76)")
       else
         screen.setAlpha(0.6)
         screen.drawText(item,0,5-25*i,20,"rgb(255,255,255)")
     end
       i+= 1
       end
  elsif delay < 4 and delay > 3 then 
    screen.drawSprite("stage",0,0,350,210)
    screen.drawSprite("open.2",0,0,400,250)
  elsif delay < 3 and delay > 2 then
    screen.drawSprite("stage",0,0,400,220)
    screen.drawSprite("oak_idol",oak.x,oak.y,64,54)
    screen.drawSprite("pine_idol",pine.x,pine.y,64,54)
    screen.drawSprite("open.3",0,0,450,300)
  elsif delay < 2 and delay > 1 then 
    screen.drawSprite("stage",0,0,450,250)
    screen.drawSprite("oak_idol",oak.x,oak.y,74,64)
    screen.drawSprite("pine_idol",pine.x,pine.y,74,64)

    screen.drawSprite("open.4",0,0,500,350)
    elsif delay < 1 and delay > 0 then 
      screen.drawSprite("stage",0,0,512,300)
    
      screen.drawSprite("oak_idol",oak.x,oak.y,84,74)
      screen.drawSprite("pine_idol",pine.x,pine.y,84,74)
    screen.drawSprite("open.5",0,0,520,400)
    
    end
    
if howTo == 1 then
  screen.fillRect(0,0,356,200,"rgba(0,0,0,0.7")
  screen.drawText("How to Play",0,80,10, "#AFA")
  
  screen.drawText("controls P1: A (left), D (right), W (punch), S (Kick)",0,50,10, "#FFF")
  screen.drawText("controls P2: Keyboard move (left), (right), (up) for punch, (down) for kick.",0,35,10, "#FFF")
  screen.drawText("Punch and Kick are the same damage, worth it 1 life (heart).",0,15,7, "#FFF")
  screen.drawText("Both players Kicks have cooldown so you cant spam kicks and",0,0,7, "#FFF")
  screen.drawText("first to hit the opponent 3 times win     ",-50,-15,7, "#FFF")
    screen.drawText("press ESC to go back to menu",0,-70,7, "#FFF")
end

//In our world long-long time ago, somehow the terrible virus killed only 'animals',
  //so trees are evolved and they want the basic needs like human.
  //They walk, group up, and fight to win to be the king of forest.
//  After you become a TreeLion, hopefully, what will happen to this tree-vilization?
  //How will you control your family? Will there be any new non-human challenger to you?
    //The next stories will be.... (whispering) to be continued...

if story == 1 then
  screen.fillRect(0,0,356,200,"rgba(0,0,0,0.7")
  screen.drawText("TreeLion Story",0,80,10, "#AFA")
  
  screen.drawText("In our world long-long time ago, somehow the terrible virus killed only 'animals',",0,50,7, "#FFF")
  screen.drawText("so trees are evolved and they want the basic needs like human.",0,35,7, "#FFF")
  screen.drawText("They walk, group up, and fight to win to be the king of forest.",0,20,7, "#FFF")
  screen.drawText("After you become a TreeLion, hopefully, what will happen to this tree-vilization?",0,5,7, "#FFF")
  screen.drawText("How will you control your family? Will there be any new non-human challenger to you?",0,-10,7, "#FFF")
  screen.drawText("The next stories will be.... to be continued...",0,-40,7, "#FFF")
  
    screen.drawText("press ESC to go back to menu",0,-70,7, "#FFF")
end

if exit == 1 then
  screen.drawText("Do you want to quit?",0,0,27, "#FFF")
  screen.drawText("if yes, touch (click) the screen!",0,-40,12, "#FFF")
    screen.drawText("press ESC to go back to menu",0,-70,7, "#FFF")
  if touch.touching then
    mode = "exit"
  end
end

  //screen.drawText("Pframe:"+ ceil(delay),100, 70,20,"rgb(255,0,0)")
 end