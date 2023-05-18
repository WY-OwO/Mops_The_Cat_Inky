===Final_Result===
+ It's time to greet your human.
    ->FR
=FR
{overtime==true:
    You approached your human from behind as they search around the house.
    "Oh! There you are, you sneaky little gremlin! I've been looking everywhere for you!"
    They greet you with an affectionate headpat.
    ->Result
}
{sleep == true:
    Your human's face lit up as soon as they see you.
    "Mops! Did you wait for me this whole time? Aww you sweetie!"
    Your human cooed as they gave you a kiss on the forehead and scratch on the chink.
    ->Result
- else:
    You walk up to your human and nudged their leg, meowing loud and clear.
    "Mops! There you are, my baby!"
    Your human crouch down and pet you.
    ->Result 
} 

=Result 
*{sleep == true}You rubbed your tired eyes.
    Your human pets you more.
    "Did you sleep today? Are you still a sleepy head huh?"
    You don't mind the sleepy talk here. 
    ->Result
*{diva == true}You're covered in dirt.
    They dusted their hands off, noticing how dirty you are. 
    "Oh gosh, Mops! Did you mess up my garden?"
    Your human stand up and close the window. 
    "Did you go play with mister mole outside over there? Did you? Oh you're such a diva."
    ->Result
*{rat == true}You poke at the dead rat you caught.
    Your human screamed in shock.
    "Mops! Did you do that?"
    You flail your tail with pride and sat down beside the rat.
    Your human took some deep breath before approaching you and complimented,
    "Oh, good job! My little hero! I must take better care of my house huh... I need to buy some rat poison soon."
    They mumble as they fetch a handful of paper towel to pick up the rat by the tail and wrapping it in a singular trash bag.
    They look disgusted while they tie up the bag and throw it into the trash can.
    ->Result
*{picture_on_table == false}Your human notices the picture you knocked over.
    "Mops, be careful! That's a great picture!"
    You looked away, acting innocent. 
    "I know when you did things on purpose, honey." 
    They picked up the picture and placed it back on the coffee table.
    ->Result
*{plate==true}Clean plate.
    Your human noticed the clean plate left on the counter.
    "Mops! Did you eat the crumbs? That's not healthy for you."
    They say as they pick up the plate and put it in the sink.
    Nonsense! It's delicious!
    ->Result
*{pipe == true}Your human sees the elbow pipe on the window cill.
    "Where'd you get this, baby? Did you find this in the garden?"
    She picked it up and put it in a drawer by the door.
    "You found the missing pipe! Guess we won't have to buy a replacement any more next time!"
    ->Result
*{butterfly==1||2}Butterfly pile.
    Your human sees the small pile of dead butterflies lying on the window cill. You hear a gasp.
    "Mops! Did you get those for me?"
    You looked up at your human in pride.
    "Mops, those were pretty when they fly in the garden! I guess you don't enjoy butterfly-watching anymore huh?"
    They sighed as she sweep the remains off of the window cill and into the garden. 
    "Thank you darling, I still enjoy seeing them up close for a moment." They reassured you. 
    ->Result
*{butterfly==3}Butterfly pile.
    Your human sees the pile of dead butterflies lying on the window cill. You hear a gasp.
    "Mops! Did you get those for me?"
    You looked up at your human in pride.
    "This is a lot of butterflies, thank you darling!"
    They pat your head as they swipe the butterflies off the window cil and into the garden.
    "Sigh, hope these butterflies had a good shot at life before meeting the ultimate doom that is you."
    ->Result
*{butterfly==4}Butterfly pile.
    Your human sees a pile of dead butterflies lying on the window cill. You hear a gasp.
    "Mops! Did you get those for me?"
    You looked up at your human in pride.
    "This is like... the entire population of butterflies, on my window cill. Honey..."
    They looks shocked.
    ** Maybe that was too much swatting...
        You look away, disowning the responsibility.
        Your human shook their head in disbelief as they swipe the pile off the window cill and into the garden.
        "Oh dear... I hope this isn't a huge environmental impact..." 
        ->Result
    ** You done well.
        Your human just cannot fathom how awesome you are at what you are capable of: mass destruction at will.
        Your human shook their head in disbelief as they swipe the pile off the window cill and into the garden.
        "Oh dear... I hope this isn't a huge environmental impact..."
        ->Result
*{loot==1}Your human see the single loot you got on the window cill. 
    They picked it up in confusion.
    "What's this? Where'd you get those, honey?"
    The examined the one piece of loot you got for them.
    "Thank you dear, I love it!"
    They say as they turn to put it in the drawer.
    ->Result
*{loot>1}Your human see the {loot} loots you got on the window cill. 
    They picked them up in confusion.
    "Well ain't this a handful of treasure you got here! You're a little explorer aren't you?"
    They say as they turn to put it in the drawer.
    ->Result
    They seem to be very proud of you.
*{drawer == true}Your human noticed the opened drawer. 
    "Mops, did you steal something?"
    You looked away casually. They won't notice a thing!
    "Don't act smart, you silly goose! I know when you're up to something."
    You waddle away from the scene, you don't need to explain anything. You fetched compensation anyways!
    You hear the sigh of defeat from your human, and the drawer was pushed closed with no further questioning. 
    ->Result
*{nuts == true}Your human noticed the nuts on the window cill.
    "Oh, how refreshing of a finding! Thank you Mops!"
    You nudged your human's leg, demanding a head pat.
    And head pat you received.
    Your human throw the nuts into a bucket outside.
    "We'll have to plant that on the weekends!"
    ->Result
*->
->End_Choice

===End_Choice===
What a day... Maybe there's something else to do for the next day.
You curled up by your human's pillow and slept.
+End game. ->END
+Tomorrow is another day... 
    ~ butterfly = false
    ~ time = 0
    ~ sleep = false
    ~ pipefirst = false
    ->start
