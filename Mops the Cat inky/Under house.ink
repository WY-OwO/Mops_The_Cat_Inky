
VAR loot = 0

=== Under_House === 
{0 < time < 3: 
    ~time = 4
    It took the entire morning's effort to finally get underneath the house.
    ->Under_H_Begin
    }
{4 < time < 6: 
    ~time = 7
    It took the entire afternoon's effort to finally get underneath the house.
    ->Under_H_Begin
    }
{7 < time < 8: 
    ~time = 9
    It took the entire night's effort to finally get underneath the house.
    ->Mole_Human
    }

= Under_H_Begin
You see mazes of pipes aligned with each other, covered in foam, so neatly, so mezmorizing. 
The mole introduced,
"This is where I found a lot of my shiny and chewy treasure! They seem to always come back after a few nights. I'll never run out of treasure at this rate! Take the lead, buddy! Let's find three for you!"
->Pipe_Directions
=Pipe_Directions
+\ {loot < 3:You crawl around and dig a hole.}
    ->loot_roll
+\ {loot == 3:You examine your three loots.}
    ->loot_end
* You think you should go now.
    {loot == 0: ->Mole_leaving | ->Mole_loot_early}

=loot_roll
~diva = true
Dig dig dig... 
You {~found half a worm... ->loot_none|found a dead beetle... ->loot_none|found a pebble! ->loot_plus|found a coin! ->loot_plus|found a bone! ->loot_plus|found a nut! ->loot_plus|found a plastic bead! ->loot_plus|found a straw! ->loot_plus}

=loot_none
{~That's not appealing at all|That's disappointing|It's something but it's not what you would consider a treasure|This can't be it|Oh well, the fun is in the pursuit}. Maybe you can try again.
->Pipe_Directions

=loot_plus
~loot +=1
{~Good job, you!|What a lucky find!|This is awesome!|Your human is missing out on this fun!}
->Pipe_Directions

=loot_end
~pipefirst = true
You and the mole stare at your findings in pride.The mole cheers for you.
"Wowza! You're amazing at this! I'm so happy for you! What a treasure hunt it is for us!"
You smile confidently. You can't wait to show it off to your human!
One by one you throw the loot out of the hole you came in from.
The mole bid you farewell,
"Thanks for asking me to bring you on an adventure. I got to get my own share now, it's going to take days! See you in a long time then!"
As soon as you exit the hole with your loot, the mole's own digging filled up that hole. 
You place your loots on the window cill. 
->outside_choice

=Mole_Human
You can hear the faint sound of the front door unlocking. Your human's back!
    You turned around, about to leave the hole, but the mole asked,
    "What? You're leaving now? Come on! We're on an adventure! Don't you want treasure? They're shiny and chewy~"
    The mole tempts you with the promised treasures. 
    * But your human's more important.
        ~ mole_end = true
        You turn to crawl out of the hole.
        The mole yelled in disappointment.
        "Oh! Oh fine! I'll keep all the treasure I find here. Don't come back! Hmph!"
        You can hear the hole getting filled up as soon as you crawled out.
         ->Final_Result
    * And the temptation is strong. 
        ~overtime = true
        You shook your head and take a step forward to the mole. 
        The mole nodded at your wise choice.
        ->Under_H_Begin
        
=Mole_leaving
~mole_end = true
"What? But we just started! I didn't dig all that just to go back empty-handed!"
The mole begs you to stay, but you insist to end the adventure here. 
The mole stomps in frustration and yell as you exit the hole,
"You're not welcomed anymore! I ain't playing with you no more!" 
But you didn't turn around. 
As you exit the hole you hear the hole being filled in behind you. 
->outside_choice

=Mole_loot_early
~mole_end = true
"Oh really? Aww... well, I'm glad you came! I'll be doing some more digging then. Bye!"
The two of you exchanged farewell and you exited the hole. 
As soon as you got out, you seem to hear the mole saying something,
"Oh boy, what's this?"
Followed by an aggressive digging sound, the dirt filled up the hole you came out of. 
Guess you won't be seeing mole again.
->outside_choice