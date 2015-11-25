data Customer = Customer String String Double
    deriving Show

-- Rock paper scissors.
data Move = Rock | Paper | Scissors deriving Show

winner :: (Move, Move) -> Move
winner (Paper, x) = case x of
  Rock -> Paper
  Scissors -> Scissors
winner (Rock, x) = case x of
  Paper -> Paper
  Scissors -> Rock
winner (Scissors, x) = case x of
  Rock -> Rock
  Paper -> Scissors

