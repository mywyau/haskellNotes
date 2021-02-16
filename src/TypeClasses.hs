module TypeClasses where

  {-  
    type constraints  go on the LHS of the "=>" which goes before the function type definition
    
  -}

  sum' :: Num a => [a] -> a   -- Num a is a type class, Num is short for numeric
  sum' [] = 0
  sum' (x : xs) = x + sum xs  
  
  showSum :: (Num a, Show a) => [a] -> [Char]
  showSum xs = show (sum xs)
 
