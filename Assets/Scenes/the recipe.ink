VAR health = 4
VAR full = 1
VAR inventory = 1


Ugh..*growl*...I'm so hungry! Fridge, please help me!

== Fridge==
Well well well
Let's see what we got here...
->DONE

==CokeClicked==
Not exactly what I was looking for but better than nothing!
~ health = health - 1
~ full = full + 1
~ inventory = inventory + 1
->DONE


==Leftovers==
*smell it
Eww! *cough* this is disgusting
->LeftoversClicked

==LeftoversClicked==
Well, better than dying of hunger!
~ health = health - 2
~ full = full + 1
~ inventory = inventory + 1
 -> DONE
    
 == Pastry==
  -> DONE
  
  ==FlourClicked==
 *take it
   Great for all recipes!
~ health = health + 2
~ full = full + 3
~ inventory = inventory + 1
 -> DONE

 ==SaltClicked==
 *take it
A classic.
~ health = health - 1
~ full = full
~ inventory = inventory + 1
 -> DONE
 
  == Garden==
  -> DONE
 
 ==CarrotClicked==
Not my favorite but definetly good for me!
 *take it
 
~ health = health + 2
~ full = full + 3
~ inventory = inventory + 1
 -> DONE

==EggClicked==
 *take it
Yay! I'm so lucky! Nothing better than a fresh egg!
~ health = health + 2
~ full = full + 3
~ inventory = inventory + 1
 -> DONE


-> Combine


===Combine==
*combine
-> DONE


