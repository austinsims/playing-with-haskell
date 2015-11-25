import System.IO

data Attribute = Attribute {
    name :: String,
    value :: String
  }
instance Show Attribute where
  show x = (name x) ++ "=\"" ++ value x ++ "\""

data Node = Element {
    tagName :: String,
    attributes :: [Attribute],
    children :: [Node]
  } | TextNode String
instance Show Node where
  -- TODO: is there a nicer way to bind these names?
  show (Element {tagName = tagName, attributes = attributes, children = children}) = "<"
    ++ tagName ++ " " -- cheap cheat to put space before attr list.. or useless space if no attrs
    ++ (concat $ map show $ attributes)
    ++ ">"
    ++ (concat $ map show $ children)
    ++ "</"
    ++ tagName
    ++ ">"
  show (TextNode innerText) = innerText

link = Element {
    tagName = "a",
    attributes = [
        (Attribute {name="href", value="http://www.google.com"})
      ],
    children = [TextNode "Go to Google!"]
  }

header = Element {
    tagName = "h1",
    attributes = [],
    children = [TextNode "My Awesome Webpage"]
  }

para = Element {
    tagName = "p",
    attributes = [],
    children = [(TextNode "Hi, my name is Austin.  I would like you to "), link]
  }

body = Element {
    tagName = "body",
    attributes = [],
    children = [para]
  }

main = do
  putStrLn $ show body
