data Player = Pitcher
            | Catcher
            | Infielder
            | Outfielder
            deriving Show

barry :: Player -> Bool
barry Outfielder = True
barry _ = False
