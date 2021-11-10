-- 23 * 36
-- reverse "hello"
-- foldr (:) [] [1, 2, 3]

{-
  Music is Math

  To kick off let's try some maths out. Up there you can type in Haskell expressions. Try this out: 5 + 7
-}

5 + 7 -- 12 :: Num a => a

{-
  Your first Haskell expression
  
  Well done, you typed it perfect! You got back the number 12. Just what we wanted.

  Let's try something completely different. Type in your name like this: "chris"
-}

"cursorsdottsx" -- "cursorsdottsx" :: [Char]

{-
  What's in a name?
  
  Hi there, cursorsdottsx! That's a pretty name. Honest. You're getting the hang of this!

  Each time, you're getting back the value of the expression. So far, just a number and a list of characters.

  You can have lists of other stuff, too. Let's see your lottery numbers: [42,13,22]
-}

[42, 13, 22] -- [41,13,22] :: Num t => [t]

{-
  Lesson 1 done already!
  
  Great, you made a list of numbers! If you win we'll split the winnings, right?

  Let's see what you've learned so far:

    1. How to write maths and lists of things.
  
  You can do stuff with lists. Maybe you want the lottery numbers sorted in the right order, try this: sort [41,13,22]
-}

sort [41, 13, 22]

{-
  We put the funk in function

  Congratulations, you just used a function. They're how you get things done in Haskell.

  As you might've guessed, we got back [13,23,30].

  Ever wanted an evil twin nemesis? Me too. Luckily, you can sort lists of characters, or strings, in the same way as numbers! sort "chris"
-}

sort "cursorsdottsx" -- "cdoorrsssttux":: [Char]

{-
  Tuples, because sometimes one value ain't enough!
  
  Watch out for cdoorrsssttux! You should keep their credentials for the police.

  My nemesis is 28 years of age: (28,"chirs")
-}

(16, "cursorsdottsx") -- (16,"cursorsdottsx"):: Num t => (t, [Char])

{-
  We'll keep them safe, don't worry about it.
  
  Is 16 a normal age for a super-villain?

  You just wrote a tuple. It's a way to keep a bunch of values together in Haskell. You can put as many as you like in there:

  - (1,"hats",23/35)
  - ("Shaggy","Daphnie","Velma")
  
  Actually, let's say our villain is (16,"cursorsdottsx"), how do you get their age?

  fst (16,"cursorsdottsx")
-}

fst (16, "cursorsdottsx") -- 16:: Num a => a

{-

-}
