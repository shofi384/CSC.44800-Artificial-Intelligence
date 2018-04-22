# Program 3: UFO Puzzle Using SWI-Prolog

## Problem:
 UFO Invasions or not? Last week, four UFO enthusiasts made sightings of unidentified flying objects in their neighborhood. Each of the four reported his or her sightings on a different day, and soon the neighborhood was abuzz with rumors of little green men. By the weekend, though, the government stepped in and was able to give each person a different, plausible explanation of what he or she had "really" seen. Can you determine the day (Tuesday through Friday) each person sighted a UFO, as well as the object that it turned out to be?
  1. Ms. Langone made her sighting at some point earlier in the week than the one who saw the balloon, but at some point later in the week, than the one who spotted the Frisbee (who isn't Mr. Hugh).
  2. Friday's sighting was made by either Mr. Barnes or the one who saw a clothesline (or both).
  3. Ms. Demetri did not make her sighting on Tuesday
  4. Ms. Langone isn't the one whose object turned out to be a water tower.
 Represent this puzzle in Prolog, SWI Prolog is recommended. State the day of each sighting, the person doing the sighting, and the object allegedly sighted and what that object actually was (or at least what the government claimed it was).

## Solution: 
 Given:
  The four UFO enthusiasts are Barnes, Hugh, Langone, and Demetri.
  The four objects are frisbee, ballon, water tower, and clothesline.
  The four days are Tuesday, Wednesday, Thursday, and Friday.
 Also, the provided information includes:
  - Langone's day was earlier than balloon day
  - Langone's day was later than frisbee day.
  - Hugh didn't spot the frisbee.
  - Friday was either B's day or clothesline day (or both).
5	N's day wasn't Tuesday.
6	K didn't spot the water tower.
