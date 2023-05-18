VAR drawer = false
VAR nuts=false

===Mole_Task===
You walk to the mole hole and started digging.
The mole from last time fumble its way out of the hole, swatting around just like before. 
"Oh no no no, no you don't! You took my treasure and now you're back for more aren't you?!"
Treasure? It must mean the pipe from before.
* You offer to bring it back.
    ->Mole_pipe_fetch
* But it's yours now, you're not giving it back.
    The mole is furious.
    "You- you big thief! You meanie! Get out of my sight! Shoo! Go! I'm leaving this place. Just the thought of you being in my vicinity disgusts me!"
    The mole swat aggressively to your left, assuming where you are. 
    Right, moles are practically blind out of darkness. 
    Out of rage of not able to hit anything, the mole screams and dives into its hole. 
    ~mole_end = true
    ->outside_choice
    
=Mole_pipe_fetch
"Wh- really? You'd do that? I- I mean that's what you should do! Bring back what belongs to me!" 
The mole stopped its (inaccurate) attacks and sat down at the entrance of its hole. 
You ran back into the house and to the drawers your human put the pipe at. 
Time to figure out your human's silly contraption!
->pipe_roll_button
=pipe_roll_button
+ {time < 9}You leap to pull the drawer.
    ->pipe_fetch_roll
* {time == 9} You hear keys on the other side of the entrance door. Oh no! 
    ->Human_Return

=pipe_fetch_roll
~time +=1
And one, and two, and a booty jiggle, and... 
{~Bonk! You hit your head on the drawer. Ow... ->pipe_fail|Oh! Just a little higher... ->pipe_fail|Ah! didn't grab onto the knob in time! ->pipe_fail|Oops! Slipped off the knob. You just got it! ->pipe_fail|Hah! Got the knob. And a push on the wall and boom! It's open! ->pipe_success}

=pipe_success
~ drawer = true
~ mole_end = true 
~ nuts = true
* Time to get the pipe! 
    You swing yourself into the drawer and pick up the shiny elbow pipe fitting.
    You hope your owner doesn't notice it missing...
    You hop off the drawer and ran back to the mole. 
    The mole, sounding very happy, took the pipe back from you and threw it into its hole. 
    "Thank you! I'm glad to have what I own back."
    You stare at the mole intensely. It seems to have realized.
    "... ok I suppose you do deserve a reward. Give me a second."
    The mole says in defeat and hops back into the hole. 
    After a minute it popped back out of the hole with a few nuts laid out in front of you.
    "Here. I saw those while digging around the place. Maybe you'll find them fancy. Now begone! I have errands to attend to and treasure to find!" 
    Leaving it at that, the mole returned to its hole. 
    You gladly took the nuts back to the window cill, hoping your human will enjoy this new gift!
    ->outside_choice
    
=pipe_fail
Better try again...
->pipe_roll_button

=== Human_Return ===
~mole_end = true
The door swung open and your human caught you in the act. 
"Mops? What are you doing? You naughty little rascal, c'mere!" 
Your human scooped you up for a big kiss on the forehead.
You gently push them on the cheek and they put you down onto the ground. 
->Final_Result.Result 