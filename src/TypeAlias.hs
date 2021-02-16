module TypeAlias where

  -- type alias or synonym a new name for your old type

  type Point = (Double, Double)

  {-
    midpoint :: (Double, Double) -> (Double, Double) -> (Double, Double)
    midpoint (x1, y1) (x2,y2) =
      ( (x1 + x2) / 2, (y1 + y2) / 2)

      kinda hard to read the type signature why not give (Double, Double) a new name?
  -}

  p1 :: (Double, Double)
  p1 = (1, 5)

  p2 :: Point    -- mix and match mainly just for human readability
  p2 = (2, 10)

  midpoint' :: Point -> Point -> Point
  midpoint' (x1, y1) (x2,y2) =
    ( (x1 + x2) / 2, (y1 + y2) / 2)


  mid' :: (Double, Double)    -- bit weird to keep changing between types and typeAliases
  mid' = midpoint' p1 p2