module LetWhereBindings where
  
  fancySeven :: Int
  fancySeven = 
    let a = 3
    in 2 * a + 1
  
  fancyNine :: Int
  fancyNine = 
    let a = 4
        b = 5
    in a + b
    
  fancyNine' :: Int 
  fancyNine' = x + y  
    where x = 4
          y = 5 
          
  {- not allowed
    
    fancyTen = 2 * (a + 1 where a = 4) 
    
    "where" bindings must be associated with a function definition.
    another difference between "let" and "where" is purely aesthetics, depending on your thought processes one is probably more intuitive than the other.
    just think of it like math setting variables first in using "let" then using them in the actual function definition.
   
  -}        
  fancyTen :: Int
  fancyTen = 2 * (let a = 4 in a + 1)  -- let can be used even with no function definition