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
  a. Langone's day was earlier than balloon's day. 
  b. Langone's day was later than frisbee's day.  
  c. Hugh didn't spot the frisbee.  
  d. Friday was either Barnes's day or clothesline day (or both).  
  e. Demetri's day wasn't Tuesday.  
  f. Langone didn't spot the water tower.  

## Strategy:
 A. From the given info we can figure out Langone didn't spot the balloon(a) or the frisbee(b) or water tower(f). Then, Langone must have spotted the clothesline.  
 B. Since Langone's day can't be Friday(a), then Friday must have been Barnes's day(d).  
 C. The frisbee wasn't spotted by Langone(b) or Hugh(c). Nor was it spotted by Barnes since Barnes's day was Friday(B) and the frisbee wouldn't have been spotted on Friday(b). Therefore, Demetri spotted the frisbee.  
 D. The Frisbee's day is at least two days before balloon's day (a + b). So, the frisbee's day must have been either Tuesday or Wednesday. Again, Demetri spotted the frisbee(C) and Demetri's day wasn not Tuesday(e). Therefore, the frisbee's as well as Demetri's day was Wednesday.  
 E. Since Langone's day is after Wednesday(b+D) and not Friday(B), then it must be on Thursday.  
 F. It follows from E that the balloon's day was Friday(E + a).  
 H. The ballon was spotted by Barnes(B + F). 
 G. From A, H, and F, Hugh spotted a water tower on Tuesday.  

## Solution:
 - Hugh spotted a water tower on Tuesday.
 - Demetri spotted a frisbee on Wednesday.
 - Langone spotted a clothesline on Thursday.
 - Barnes spotted a balloon on Friday.
