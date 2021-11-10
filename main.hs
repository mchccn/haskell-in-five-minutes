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

(16, "cdoorrsssttux") -- (16,"cdoorrsssttux"):: Num t => (t, [Char])

{-
  We'll keep them safe, don't worry about it.
  
  Is 16 a normal age for a super-villain?

  You just wrote a tuple. It's a way to keep a bunch of values together in Haskell. You can put as many as you like in there:

  - (1,"hats",23/35)
  - ("Shaggy","Daphnie","Velma")
  
  Actually, let's say our villain is (16,"cdoorrsssttux"), how do you get their age?

  fst (16,"cdoorrsssttux")
-}

fst (16, "cdoorrsssttux") -- 16:: Num a => a

{-
  Lesson 2 done! Wow, great job!
  
  Good job! You got the age back from the tuple! Didn't even break a sweat, did you? The fst function just gets the first value. It's called "fst" because it's used a lot in Haskell so it really needs to be short!

  Time to take a rest and see what you learned:

  Functions can be used on lists of any type.
  We can stuff values into tuples.
  Getting the values back from tuples is easy.
  Now let's say you want to use a value more than once, how would you do it? To make our lives easier, we can say:

  let x = 4 in x * x
-}

let x = 4 in x * x -- 16:: Num a => a

{-
  Let them eat cake
  You just bound a variable. That is, you bound x to the expression 4, and then you can write x in some code (the body) and it will mean the same as if you'd written 4.

  It's like this: let var = expression in body

  The in part just separates the expression from the body.
  For example try: let x = 8 * 10 in x + x

  So if we wanted to get the age of our villain, we could do:

  let villain = (28,"cdoorrsssttux") in fst villain
-}

let villain = (28,"cdoorrsssttux") in fst villain -- 28:: Num a => a

{-
  Basics over, let's go!
  Next, let's take a short detour to learn about syntactic sugar. Try typing this out:

  'a' : []

  Or skip to lesson4 to learn about functions, the meat of Haskell!
-}

'a' : []

{-
  You constructed a list!
  Well done, that was tricky syntax. You used the (:) function. It takes two values, some value and a list, and constructs a new list out of them. We call it 'cons' for short.

  'a' is the character 'a', [] is an empty list. So tacking 'a' at the start of an empty list just makes a list ['a']!

  But thankfully we don't have to type out 'a' : 'b' : [] every time we want to make a list of characters; we can use syntactic sugar and just write ['a','b']. Don't believe me, check this!

  'a' : 'b' : [] == ['a','b']
-}

'a' : 'b' : [] == ['a','b'] -- True :: Bool

{-
  You're on fire!
  You're handling this syntax really well, nice!

  You just got a boolean value back, and it said True. That means they're equal!

  One final demonstration on syntactic sugar for now:

  ['a','b','c'] == "abc"
-}

['a','b','c'] == "abc" -- True :: Bool

{-
  Lesson 3 over! Syntactic sugar is sweet
  Let's have a gander at what you learned:

  In 'a' : [], : is really just another function, just clever looking.
  Pretty functions like this are written like (:) when you talk about them.
  A list of characters ['a','b'] can just be written "ab". Much easier!
  Phew! You're getting pretty deep! Your arch nemesis, cdoorrsssttux, is gonna try to steal your mojo! Let's learn a bit more about functions and passing them around. Try this:

  map (+1) [1..5]
-}

map (+1) [1..5] -- [2,3,4,5,6]:: (Enum b, Num b) => [b]

{-
  Functions [of a Geisha]
  Here's where the magic begins!

  You just passed the (+1) function to the map function.

  You can try other things like (remember: click to insert them):

  - map (*99) [1..10]
  - map (/5) [13,24,52,42]
  - filter (>5) [62,3,25,7,1,9]
  
  Note that a tuple is different to a list because you can do this:

  (1,"George")
-}

(1,"George") -- (1,"George"):: Num t => (t, [Char])

  {-
  Lists and Tuples
  You can only have a list of numbers or a list of characters, whereas in a tuple you can throw anything in!

  We've also seen that you can make a new list with (:) that joins two values together, like:

  1 : [2,3]

  But we can't do this with tuples! You can only write a tuple and then look at what's inside. You can't make new ones on the fly like a list.

  Let's write our own functions! It's really easy. How about something simple:

  let square x = x * x in square 10
-}

let square x = x * x in square 10 -- 100:: Num a => a

{-
  Let there be functions
  Nice one! I think you're getting used to the let syntax.

  You defined a function. You can read it as, as for a given parameter called x, square of x is x * x.

  Some others you can try are:

  - let add1 x = x + 1 in add1 5
  - let second x = snd x in second (3,4)
  - Let's go crazy and use our square function with map:

  let square x = x * x in map square [1..10]
-}

let square x = x * x in map square [1..10] -- [1,4,9,16,25,36,49,64,81,100]:: (Enum b, Num b) => [b]

{-
  Let there be functions
  That's so cool! You described a simple function square and then you just passed it to another function (map) and got back [1,4,9,16,25,36,49,64,81,100], exactly what you expected!

  Haskell is pretty good at composing things together like this. Some other things you can try are:

  - let add1 x = x + 1 in map add1 [1,5,7]
  - let take5s = filter (==5) in take5s [1,5,2,5,3,5]
  - let take5s = filter (==5) in map take5s [[1,5],[5],[1,1]]
  
  Did you get back what you expected?

  One more example for text; how do you upcase a letter?

  toUpper 'a'
-}

toUpper 'a' -- 'A' :: Char

{-
  Exercise time!
  Easy! Remember: characters are written like 'a' and strings (lists of characters) are written like "a".

  I need you to use toUpper capitalise my whole name, "Chris". Give it a try. You can do it, I believe in you!

  Spoiler: map toUpper "Chris"
-}

map toUpper "chris"

{-
  Lesson 4 complete!
  Brilliant! You're making excellent progress! You just passed toUpper to map. No problem.

  Let's go over what you've learned in this lesson:

  Functions like map take other functions as parameters.
  Functions like (+1), (>5) and square can be passed to other functions.
  Defining functions is just a case of writing what to do with the parameters.
  Let's check out pattern matching; a way to get values from other values using patterns. Try this:

  let (a,b) = (10,12) in a * 2
-}

let (a, b) = (10, 12) in a * 2 -- 20:: Num a => a

{-
  Pattern matching!
  Jolly good show!

  So you had a value (10,12) and matched it against a pattern (a,b), then you were able to do stuff with the a and b!

  Note: Pattern matching (a,b) against (1,2) to get the a is the same as doing fst (1,2), like you did in step7!

  A pattern always matches the way the value was originally constructed. Remember that "abc" is syntactic sugar for 'a' : 'b' : 'c' : [].

  So you can get the characters from a string with patterns:

  let (a:b:c:[]) = "xyz" in a
-}

let (a:b:c:[]) = "xyz" in a -- 'x' :: Char

{-
  Ignorance is bliss
  You're getting into tricky syntax, huh? I know you can handle it!

  If you just want some of the values, you can ignore the others with _ (underscore) like this:

  let (a:_:_:_) = "xyz" in a

  In fact, (a:b:c:d) is short-hand for (a:(b:(c:d))), so you can just ignore the rest in one go:

  let (a:_) = "xyz" in a
-}

let (a:_) = "xyz" in a -- 'x':: Char

{-
  Show me the money!
  Try to get the 'a' value from this value using pattern matching:

  (10,"abc")

  Spoiler: let (_,(a:_)) = (10,"abc") in a
-}

let (_,(a:_)) = (10, "abc") in a -- 'a':: Char

{-
  Perfetto!
  Wizard! I think you've got pattern-matching down.

  If you're still a bit unsure, here are some other things you can try:

  let _:_:c:_ = "abcd" in c
  let [a,b,c] = "cat" in (a,b,c)
  You can also grab a whole value and pattern match on it (have your cake and eat it too):

  let abc@(a,b,c) = (10,20,30) in (abc,a,b,c)
-}

let abc@(a, b, c) = (10, 20, 30) in (abc, a, b, c) -- ((10, 20, 30), 10, 20, 30):: (Num t, Num t1, Num t2) => ((t, t1, t2), t, t1, t2)

{-
  And that's the end of that chapter
  That was easy, right?

  Let's go over what you've learned in this lesson:

  - Values are pattern matched, or deconstructed, by writing however they were constructed.
  - Patterns let you use the values that you match.
  - You can ignore whichever values you want.
  - You can pattern match and keep hold of the original value too.
  
  Okay! That's all for now. It's time to dig into some documentation!
-}
