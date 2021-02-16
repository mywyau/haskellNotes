module PatternMatchingAndGuards where
  
  -- aka "first prime" so the compiler doesnt get confused with the other native "fst" function
  fst' :: (a, b) -> a  -- type is saying given a tuple of two types return the declared output type "a", i.e the first value via pattern matching    
  fst' (a,b) = a       

  snd' (a,b) = b   -- this time return second value  or "b"

  null' [] = True
  null' (x : xs) = False

  head' (x:xs) = x

  -- if the pattern match "head [] = ???" is not defined then you are able to handle the pattern match but the program will blow up
  -- crash and spit out a useful message
  head' [] = error "head of empty list"  

  -- two versions of the same function

 {-  alt way to handle the empty head scenario
 
  doubleNumbersInList :: [Int] -> [Int]
  doubleNumbersInList listOfNumbers =
    if null listOfNumbers
    then []
    else (2 * (head listOfNumbers)) : (double(tail listOfNumbers))
    
 -}
 
  listOfNumbers = [1,2,3,4,5,6,7,8,9,10] 

  doubleNumbersInList :: [Int] -> [Int]
  doubleNumbersInList [] = []   -- handle the empty list and compiler checks we have made the pattern matching exhaustive
  doubleNumbersInList (x : xs) = (2 * x) : (doubleNumbersInList xs)

  {- "guards guards!" -}

  {-
    Scala Equivalent
    
    def pow2(n:Int) =
      n match {
        case number if number == 0 => 1
        case number => 2 * pow2(number - 1)
      
  -}

  pow2 n      -- the equal has moved below unlike in a pattern match
    | n == 0 = 1   -- declare the scenario with a pipe and a boolean expression in Scala there is an "if" to define the boolean guard
    | otherwise = 2 * (pow2 (n - 1))  -- otherwise is the _ wildcard catch all in Scala

  {- if else, messy version
  
  removeOdd nums =
    if null nums
    then []
    else
      if (mod (head nums) 2) == 0
      then (head nums) : (removeOdd (tail nums))
      else removeOdd (tail nums)
  -}

  {- guard only version  

  removeOdd :: [Int] -> [Int]
  removeOdd nums
    | null nums = []
    | (mod (head nums) 2) == 0 = (head nums) : (removeOdd (tail nums))
    |  otherwise =  removeOdd (tail nums)
    
  -}
    
  -- Mix of a pattern match and guard  
  
  removeOdd [] = []
  removeOdd (x:xs) 
    | mod x 2 == 0 = x : (removeOdd xs)
    | otherwise = removeOdd xs 




