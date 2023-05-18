INCLUDE Outdoor start.ink
INCLUDE Results.ink
INCLUDE Indoor mouse.ink
INCLUDE Under house.ink
INCLUDE Mole Revisit.ink

VAR endgame = false
VAR time = 0
VAR picture_on_table = true
VAR overtime = false
{time > 9: 
    ~overtime = true 
}
VAR sleep = false

-> start
===start===
You hear door creak and race over to see your human getting ready to leave
"Mops, be a good kitty and watch over the house for me!" Your human chirps as they slip on their shoes.

 + You try the block the door and meow pitifully.
    "Oh Mops you know I'd rather spend all my time with you but I have to go to work. Those treats aren't going to magically appear."
    Your human gives you some head scratches and a kiss to the forehead.
    
 + You bat at their shoes. Those must be the demons that convince your human to leave.
    "Mops! Stop attacking my shoes you silly goose."
    Your human gently pushes you away from the shoes.
    
 + You lift your tail out of annoyance and disdainfully walk away.
    "See you later Mops!"



- The door closes shut. You are now on your own.

//Doorway Finished
->doorway
===doorway===
To the left of you is the living room. To the right of you is the kitchen.
The window's open to the backyard. Your human must have forgot to close it.

{time >= 9:
    + You human is back! You see them carrying a giant paper bag, clearly exhausted. 
        ->Final_Result
    
    - else:
         + You sit and stare at the door.
             ~ time += 1
            {time: 
            - 1: The wind rustles leaves. You hear birds chirping.
            - 2: You flick your tail around and and stare at the door intently.
            - 3: You clean your paws throughly, making sure to lick everywhere.
            - 4: You lick your paw and rubbed your face. 
            - 5: A letter slips through the gap in the door. You furiously bat at the paper and stick your paw through the mail gap on the door. On the otherside of the door, you hear a human chuckle.
            - 6: You scratch your collar with your back leg. It's quite itchy.
            - 7: This is a little boring...
            - 8: You lie down in front of the door and stare at it longingly.
            - 9:You the sound of a key being inserted into the lock. Your ears perk up and you forward, pawing the doorway. 
                The door opens and you see your human, exhausted and carrying a giant paper bag. 
                ~ sleep = true
            }
        -> doorway
    + You walk into the living room.
        -> living_room
    + You walk into the kitchen.
        -> Kitchen_Catch
    + You walk to the window.
        -> outside
    + {endgame == true} End Game. ->END
}

//Living room UNFINISHED
===living_room===
The sunlight illuminates the living room with a warm glow. On the side of the living room is your favorite toy, lying on top of your bed. The curtains rustle in the breeze from a half opened window.
    {picture_on_table:
    A framed picture sits on top of the coffee table.
    ->living_room_choice
    - else:
    A framed picture lies on the carpet underneath the coffee table.
    ->living_room_choice
    }
=living_room_choice
{time > 9: You think your owner's back already. You should find them in the doorway.}
    + Take a cat nap
        You give your favorite toy a couple of bites before you curl up in the bed and doze off in the warm sunlight.
        ~time += 2
        -> living_room_choice
    + Hop onto the coffee table
        {picture_on_table == true:
            You hop onto the coffee table and get a better look at the picture. The framed picture shows your human and another human smiling happily.
                ++ You bat the picture off the table with your paws. 
                    ~picture_on_table = false
                    The picture lands with a thump onto the carpet.
                        -> living_room_choice
                ++ Hop off the coffee table
                    You land gracefully on your paws and give youself a lick.
                    -> living_room_choice
        - else:
            A clear, empty coffee table greets you.
            ++ Hop off the coffee table
                    You land gracefully on your paws and give youself a lick.
                    -> living_room_choice
        }
    + Leap out of the window to explore the garden.
        -> outside
    + You pad back to the doorway.
        ->doorway


