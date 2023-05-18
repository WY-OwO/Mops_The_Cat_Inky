VAR treat = false
VAR rat=false
VAR plate = false

===Kitchen_Catch===
The kitchen is pretty clean.
The counter smells like bacon and eggs.
The stove smells warm.
The sink smells toasty.
Where's the snack cabinet again? 
->Kitchen_Choice

=Kitchen_Choice
{time > 9: You think your owner's back already. You should find them in the doorway.}
+ You jump onto the counter.
    {plate == false: You see a plate with bits and pieces of eggs and  bacon.|You see a clean plate.}
    **{plate==false}Eat it.
        ~ plate = true 
        You lick the plate clean of its crumbs.
        It tastes so much better than your dry food. 
        You should demand the human to make you this for every meal! 
        ->Kitchen_Choice
    ++Leave it.
        You jump down the counter.
        ->Kitchen_Choice
+ You jump onto the stove.
    {time < 4:The warm touch of the stove feels good under your paws.}
    ->loaf
+You jump to the side of the sink.
    There's a bit of dirty pans and utencils in here. 
    Nothing of interest, honestly.
    ++Leave it.
        ->Kitchen_Choice
+You check out your snack cabinet.
    {rat==false:->Rat_Battle | ->snack}
+You go back to the doorway.
    ->doorway
    
=snack
The cabinet is slightly open, just enough for you to nudge open.
You see the heap of snacks your human hoard for you. 
->snack_choice
=snack_choice
+ Eat a {~bacon bite|chicken cube|dried fish|jerkey|chicken liver|beef bite}.
    ~ time +=1
    It tastes {~phenomenal|as good as you remember it to be|better than you remember it|dry|amazing|unbelievably good|exquisite|alright|like chicken|like meat}.
    ->snack_choice
+ Leave it.
    You leave the cabinet behind, shedding a dramatic tear...
    ->Kitchen_Choice

=loaf
+Loaf...
    ~time +=1
    You're a perfect loaf on a stove...
    ->loaf
+Leave it.
    You jump down the stove. 
    ->Kitchen_Choice

===Rat_Battle===
The cabinet is slightly open, just enough for you to nudge open.
But as the door swings open, you see a rat inside!
It seems the opening was just enough for a rat too!
Unbelievable! How dare someone comes for your precious treats! Those are for you! 
You must catch the rat at all cost, before your human comes back! 
->Rat_roll
=Rat_roll
~ time +=1
The rat runs {~into the cabinet|onto the counter|across the floor|around the kitchen island|up the chairs}!
+You {~chase after the rat|swat at the rat|bite at the rat|pounce at the rat|block the rat's path with your paw|claw at the rat|flop onto the rat}!
    {~ But you missed! ->Rat_roll|But the rat jumped! ->Rat_roll|But the rat dashed! ->Rat_roll|And the rat is caught! ->Rat_success}
=Rat_success
~ rat = true
The rat falls to the ground in defeat, twitching as its life fades away from its eyes, seeing the one who ended it before it pass on to the afterlife.
You feel powerful.
Your human must be so proud of you.
You picked up the rat and left it by the door way. 
->Kitchen_Catch