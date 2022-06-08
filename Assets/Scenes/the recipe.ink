VAR health = 4
VAR full = 1
VAR inventory = 0


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
{inventory >= 3} -> Combine
->DONE


==Leftovers==
It's a leftover from 2 weeks ago.
*smell it
Eww! *cough* this is disgusting
#leftovers
->LeftoversClicked

==LeftoversClicked==
Well, better than dying of hunger!
~ health = health - 2
~ full = full + 1
~ inventory = inventory + 1
{inventory >= 3} -> Combine
 -> DONE
  
  ==FlourClicked==
  Great for all recipes!
~ health = health + 2
~ full = full + 3
~ inventory = inventory + 1
{inventory >= 3} -> Combine
 -> DONE

 ==SaltClicked==
A classic.
~ health = health - 1
~ full = full
~ inventory = inventory + 1
{inventory >= 3} -> Combine
 -> DONE
 
  == Garden==
  -> DONE
 
 ==CarrotClicked==
Not my favorite but definetly good for me!
~ health = health + 2
~ full = full + 3
~ inventory = inventory + 1
{inventory >= 3} -> Combine
 -> DONE

==EggClicked==
Yay! I'm so lucky! Nothing better than a fresh egg!
~ health = health + 2
~ full = full + 3
~ inventory = inventory + 1
{inventory >= 3} -> Combine
 -> DONE
 
  ==MushroomClicked==
Is it edible? Well, whatever.
~ health = health - 2
~ full = full + 1
~ inventory = inventory + 1
{inventory >= 3} -> Combine
 -> DONE



==Combine==
{health > 5} -> GoodEnding
{full> 9} -> GoodEnding

{health < 1} -> BadEnding
{full < 4} -> BadEnding

{health < 1} -> BadEnding2
{full < 4} -> BadEnding2

==GoodEnding==
#good ending
It was worth waiting! What a wonderful lunch!
 -> DONE
 
 ==BadEnding==
 #bad ending
Uugh it hurts, I should call the hospital.
 -> DONE
 
 ==BadEnding2==
  #bad ending 2
I mean is not that bad but it's not good either.
 -> DONE
