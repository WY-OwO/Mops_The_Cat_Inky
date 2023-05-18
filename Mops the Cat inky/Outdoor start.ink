VAR butterfly= 0
VAR mole = false
VAR pipe = false
VAR pipefirst= false
VAR exposepipe= false
VAR diva=false
VAR mole_end = false

===outside===
From the open window, you look down at your natural territory. 
The smell of grass and dirt fills your nose.
{time>6: The sun is setting. The butteflies fly away.|Butterflies flutter over the flower bed.}
By the little stone path, there's {mole==false: a|the} mole hole. {mole==false: You don't remember it being here before.}
->outside_choice

===outside_choice===
    * {time ==9} You hear the front door opened. It's your human! ->Final_Result
    * {time >=9} Your human is searching for you around the house. ->Final_Result
    + {time<7 && butterfly < 4} You chase after the butterflies. ->Butterfly
    + {pipefirst==false}You dig the mole hole. 
        {mole_end==true:->M_Deny | ->M_Terminal}
    + You return to the living room. ->living_room

=Butterfly
~ butterfly += 1
~ time += 1
{butterfly == 1: 
    You chase after the butterflies and swatted at any you could reach. 
    Soon the grass floor was sprinkled with dead butterflies.
    You look at your work in pride. Your human will love your hard work. 
    You gathered them into a small pile by the window cill.
    {time>6:The sun is setting. The butteflies fly away.}
}
{butterfly == 2: 
    You leap majestically at the remaining swarms of butterflies. 
    They sprinkle to the ground. 
    You look at your loot in pride. Your human will be estatic to see your showed off hard work. 
    You gathered them into a neat pile by the window cill.
    {time>6:The sun is setting. The butteflies fly away.}
}
{butterfly == 3: 
    You once again jump in the air and catch some butterflies. 
    You look at your work in pride. Your human will love your hard work. 
    You gathered them into a bigger pile by the window cill.
    {time>6:The sun is setting. The butteflies fly away.}
}
{butterfly == 4: 
    You swing at the last butterfly in the air. 
    There are no more butterflies in sight.
    You now have a heap of dead butterflies by the window cill.
    You question is it really worth it to take out all of them?
}
->outside_choice

===M_Terminal===
{pipe == true: ->Mole_Task | ->Mole}

===M_Deny===
The mole hole is clogged with stones.
The mole doesn't want to see you  again. 
->outside_choice

===Mole===
~ mole = true
You walk to the mole hole and started digging.
You hear something moving viciously in the hole and soon popped out a mole. The sudden appearance made you jump. 
"Hey, what's this all about huh?!" The mole yelled at you.
"You want some of this? Huh? You want some of this?!" The mole swing its claws up and down, left and right. 
It would have been intimidating if it were going towards you but it just waddles to your right. 
You almost forgot they're blind. 
* You swat the mole. 
    ->Mole_Swat
* You sat and watch the mole. 
    ->Mole_Watch

=Mole_Swat
The mole falls to the ground on its belly. 
It braces its head and begged,
"Oh no no no! I accept defeat! Don't hurt me..."
You tilted your head in confusion. It must be scary to fight anything while blind. 
* You ask for an adventure. 
    ->Mole_Adventure

=Mole_Watch
~ pipe = true
~ pipefirst = true
The mole continues to swing around for a bit, and then returned to its hole.
You came closer to the hole and an elbow pipe fitting flies out, almost hitting you.
The mole came out yelling, "take that! Hah!" 
And the mole dived back into the hole, clogging the entrance with a stone. 
*You picked up the elbow pipe fitting and put it on the window cill. 
    Your human will love this shiny gift! 
    ->outside_choice

=Mole_Adventure
~ exposepipe = true
The mole slowly lifted its paws from its face, peeking at you.
"You... you want adventure? With me?"
You nodded. 
The mole jumps up in excitement,
"Oh boy! Finally, a play mate! Come! An adventure you ask? An adventure I shall bring!" 
The mole dives into its hole, leaving you behind. You looked around in confusion.
It reappeared by the foot of the house. It waved at you. 
"Over here lad!" 
The mole start digging around the hole it popped out of. 
You run over to the mole.
The mole says as it digs,
"We're going on a treasure hunt! Under this big boulder! C'mon, help me out!" 
* You tell the mole to stop digging under your house.
    "What? But there's so many treasure waiting for us to find! I thought you wanted an adventure."
    You want to argue back but the mole interrupts.
    "Come now! We must speed up! The day is passing by and treasure awaits!" 
    The mole continues to dig.
    ->Under_House
* You help the mole and started digging. 
    ~diva = true
    You started digging with the mole. 
    "Yea! That's it! You're a natural!"
    It didn't take long before you're covered in dirt.
    ->Under_House
