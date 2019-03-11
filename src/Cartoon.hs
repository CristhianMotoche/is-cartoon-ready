module Cartoon (Cartoon(..)) where

data Cartoon =
  Cartoon
    { name :: String
    , latestEpisode :: String
    } deriving (Show, Eq)
