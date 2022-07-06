VAR firefly = 0
VAR emotional_growth = 0
VAR N = 0

Mom!
Mom!!
MOOOMMMM!!!
Mom, pretty please...
...It's so dark in here.
-> DONE

==Dice_room==
Where am I?
Is this a dream?
-> DONE

==CandyStore_room==
#candy
jknkjnkj
-> DONE

==Handle_clicked==
~ N = N + 1
{
  - N <= 1 and N >=0:
    -> DONE
    - N <= 2 and N >=1:
    -> Candy2
    - N <= 3 and N >=2:
    ->Firefly_clicked
}
 -> DONE
 
==Candy2==
My mom always says it's better not to eat too many sweets...
+ eat
But they taste so good!
 -> DONE
+ don't eat
I don't want to make my mom angry.
~ emotional_growth = emotional_growth + 2
 -> DONE
 
==Firefly_clicked==
~ firefly = firefly + 1
-> DONE

==Firefly_dragged==
~ firefly = firefly + 1
What do you want to do when you grow up?

 +I don't know
 I don't know...
~ emotional_growth = emotional_growth + 1
-> CandyStore_room

+Pokémon trainer
I want to be a pokémon trainer!
-> CandyStore_room

+Engineer
I want to be an engineer.
~ emotional_growth = emotional_growth + 2
-> CandyStore_room