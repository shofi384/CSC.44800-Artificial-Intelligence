# Program 3: UFO Puzzle Using SWI-Prolog

## Problem:
 UFO Invasions or not? Last week, four UFO enthusiasts made sightings of unidentified flying objects in their neighborhood. Each of the four reported his or her sightings on a different day, and soon the neighborhood was abuzz with rumors of little green men. By the weekend, though, the government stepped in and was able to give each person a different, plausible explanation of what he or she had "really" seen. Can you determine the day (Tuesday through Friday) each person sighted a UFO, as well as the object that it turned out to be?
  1. Ms. Langone made her sighting at some point earlier in the week than the one who saw the balloon, but at some point later in the week, than the one who spotted the Frisbee (who isn't Mr. Hugh).
  2. Friday's sighting was made by either Mr. Barnes or the one who saw a clothesline (or both).
  3. Ms. Demetri did not make her sighting on Tuesday
  4. Ms. Langone isn't the one whose object turned out to be a water tower.
 Represent this puzzle in Prolog, SWI Prolog is recommended. State the day of each sighting, the person doing the sighting, and the object allegedly sighted and what that object actually was (or at least what the government claimed it was).

## Analysis: 
 Given:
  The four UFO enthusiasts are Barnes, Hugh, Langone, and Demetri.
  The four objects are frisbee, ballon, water tower, and clothesline.
  The four days are Tuesday, Wednesday, Thursday, and Friday.
 Also, the provided information includes:
  (a) Langone's day was earlier than balloon day
  (b) Langone's day was later than frisbee day.
  (c) Hugh didn't spot the frisbee.
  (d) Friday was either Barnes's day or clothesline day (or both).
  (e) Demetri's day wasn't Tuesday.
  (f) Langone didn't spot the water tower.

## Solution: 
 1. From the given info we can figure out Langone didn't spot (a) balloon or (b) frisbee or (f) water tower. Then, Langone must have spotted the clothesline. 
 2. Since Langone's day can't be (a) Friday, then Friday must have been (d) Barnes's day.
 3. Frisbee wasn't spotted by (b) Langone or (c) Hugh. Nor was it spotted by Barnes, since Barnes's day was (2) Friday and the frisbee wouldn't have been spotted on Friday (b). So, Demetri spotted the frisbee. 

Also, we know frisbee day is two days before balloon day (1,2), so frisbee day must have been Tuesday or Wednesday; but N's day wasn't Tuesday (5), so frisbee day was Wednesday, which means K's day was Thursday (2) and balloon day was Friday (1).
And the rest we can get by elimination. Summing up:
•	G spotted a water tower on Tuesday.
•	N spotted a frisbee on Wednesday.
•	K spotted a clothesline on Thursday.
• B spotted a balloon on Friday.