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
Woooow! It's so...
beautiful!!
If this is a dream, I never want to wake up!
-> DONE

==Handle_clicked==
~ N = N + 1
{
 - N <= 1 and N >=0:
 -> Candy1
 - N <= 2 and N >=1:
 -> Candy2
 - N <= 3 and N >=2:
 ->Firefly_message
}
-> DONE

==Candy1==
Free Candy!!!
+ eat
#fadecandy1
Umm, Yummy!
-> DONE
+ don't eat
#fadecandy1
Too bad, I'm already full.
-> DONE

==Candy2==
My mom always says it's better not to eat too many sweets...
+ eat
#fadecandy2
But they taste so good!
{
 - emotional_growth <= 1:
 #badending
-> BadEnding
}
-> DONE
+ don't eat
#fadecandy2
I don't want to make my mom angry.
~ emotional_growth = emotional_growth + 2
-> DONE

==Firefly_message==
#firefly
~ firefly = firefly + 1
#rapresention
-> Office

==Office==
What is this?
An office? Wait!
Isn't that...mine?
-> DONE

==Firefly_clicked==
~ firefly = firefly + 1
#rapresention
-> DONE

==Firefly_dragged==
~ firefly = firefly + 1
#rapresention
What do you want to do when you grow up?

+I don't know
I don't know...
~ emotional_growth = emotional_growth + 1
-> CandyStore_room

+Pokémon trainer
I want to be a Pokémon trainer!
-> CandyStore_room

+Engineer
I want to be an engineer.
~ emotional_growth = emotional_growth + 2
-> CandyStore_room

==BadEnding==
???: Good morning Mr.Brown.
What's going on! Who are you?
Sophia: I'm Sophia, I'm your nurse for the day.
Sophia? I don't know you!
Sophia: I just started working here Sir.
Working? What's going on? Where am I?
Sophia: You're in the nursing hom-
Mom, MOM!
Sophia: Sir, calm down.
MOOOOOOM!!!
Sophia: Dr.Anderson, I think we have a problem here.
#blackscreen
NOOOOOOOOOOO!!!
The End.
-> DONE

==GoodEnding==
???: Good morning Mr.Brown.
Good morning.
Excuse me, do I know you?
???:Oh no, sorry my bad. I'm Sophia, I'm your nurse for the day.
Nurse? Did I get hurt?
Sophia: Oh no Sir, it's a routine check.
I don't understand, why am I at the hospital?
Sophia: Oh no Sir, this is not a hospital. It's a nursing home.
NURSING HOME?
But I'm just a kid! It can be!
Sophia: Sir, calm down.
No, no, no! There must be a mistake here!
Sophia: Let's check together then.
Sophia: You are Mr.Jack Brown, correct?
Yes, that is correct.
Sophia: Born on the 27th of August of 2001?
Yes...
Sophia: Everything it's on point then.
But...
Sophia: Alright, give me a moment.
Sophia: Here we go.
#gift
Sophia: It's a lucky charm. It will guide you through the dark times...I hope you like it.
I...love it.
Thank you, Sophia.
The End.
-> DONE






