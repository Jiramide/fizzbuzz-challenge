import Data.Maybe (fromMaybe)
import Data.Foldable (fold)
import Control.Monad (mapM_)

type Rule b = b -> Maybe String

rule :: (Integral b) => b -> String -> Rule b
rule m s i =
  if i `mod` m == 0
  then Just s
  else Nothing
  
rules :: (Integral b) => [Rule b]
rules =
  [ rule 3 "Fizz"
  , rule 5 "Buzz"
  ]
  
fizzBuzz :: (Show b, Integral b) => b -> [String]
fizzBuzz = fmap (fromMaybe <$> show <*> mRules) . enumFromTo 1
  where mRules = fold rules
  
main = mapM_ putStrLn $ fizzBuzz 100
