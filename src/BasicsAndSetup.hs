module BasicsAndSetup where
  
{-
  Shortened down from learn4Haskell
  
  __statically-typed__ language
  __strongly-typed__ language
  
   Haskell is __indentation-__ and
  __layout-sensitive__ language, so this is important to keep in mind.
    
  Run "ghci" to start up the haskell compiler once set up
   
  You are able to evaluate some functions and variables straight away in the ghci REPL
  try running "1 + 2" in the REPL
  
  To quit GHCi, enter the ":q" command (short for ":quit").
  
  You can inspect the type of expression by using the ":t"
  command in GHCi (short for ":type").
  
  Give :t False 
  
  You've also seen the arrow "->" which is a function. When you see "A -> B
  -> C" you can think that this is a function that takes two arguments of types
  "A" and "B" and returns a value of type "C".
  
  For example, here is the type signature of a function that takes a 'Double' and
  an 'Int', and then returns an 'Int':
  
  @
  roundSubtract :: Double -> Int -> Int
  @
-}
  
  x = 1
  y = 2
  z = 3
    
  addTogether :: Int -> Int -> Int 
  addTogether x y = x + y   
    
  double :: [Int] -> [Int]  
  double numbers = 
    if null numbers 
    then []
    else (2 * (head numbers)) : (double (tail numbers))     
  
  {-
    10 - (-5)  -- negative constants require "()" around it 
    (3 + 5) < 10
    True && Fals
    10 < 20 || 20 < 5
    2 ^ 10  -- power
    not False
    div 20 3  -- integral division
    mod 20 3  -- integral division remainder
    max 4 10    
    min 5 (max 1 2)    
    
    roundSubtract x y =
        ceiling x - y
        
    Don't forget the main rule:
    **Always provide type signatures for top-level functions in Haskell.**
   
  -}
  
  {- 
  After you've implemented the function (or even during the implementation), you
  can run it in GHCi with your input. To do so, first, you need to load the module
  with the function using the ":l" (short for ":load") command.
  
  ghci> :l src/Lesson1.hs
  
  After that, you can call the 'next' function as you already know how to do that.
  Or any other function defined in this module! But remember, that you need to
  reload the module again after you change the file's content. You can reload the
  last loaded module by merely typing the ":r" command (no need to specify the
  name again).
  
  ghci> :r
  
  A typical workflow looks like this: you load the module once using the ":l"
  command, and then you should reload it using the ":r" command each time you
  change it and want to check your changes.
  -}
  
  
-- :l src/Lesson1.hs
-- double [1,2,3]

  tuple1 = (1, "second value")  
--  can have different typed element unlike a a list

  firstValue = fst tuple1
  secondValue = snd tuple1
  
  donuts = ["custard donut", "chocolate donut", "iced donut", "jam donut", "yum yums", "wasabi donut"] 
    
  headAndLength :: [a] -> (a, Int)
  headAndLength yourList = (head yourList, length yourList) 
  