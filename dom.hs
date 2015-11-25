data Attribute = Attribute {
    name :: String,
    value :: String
  }
instance Show Attribute where
  show x = (name x) ++ "=\"" ++ value x ++ "\""

data Element = Element {
    tagName :: String,
    attributes :: [Attribute],
    children :: [Element]
  }
instance Show Element where
  show x = "<"
    ++ tagName x ++ " " -- cheap cheat to put space before attr list.. or useless space if no attrs
    ++ (concat $ map show $ attributes x)
    ++ "></" -- TODO: innerText
    ++ tagName x
    ++ ">"

link = Element {
    tagName = "a",
    attributes = [
        (Attribute {name="href", value="http://www.google.com"})
      ],
    children = []
  }
