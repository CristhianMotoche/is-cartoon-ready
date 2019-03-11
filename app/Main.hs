module Main where

import Scraper

import Cartoon

import Text.HTML.Scalpel

main :: IO ()
main =
  let url = "https://kimcartoon.to/Status/Ongoing/LatestUpdate"
   in scrapeURL url cartoonsScrapper >>= \result ->
     case result of
       Nothing -> print "Hey! I think the HTML has changed or our scrapper is failing!"
       Just cartoonList ->
         mapM_ (print . format) cartoonList
           where
             format (Cartoon name episode) = "Cartoon: " ++ name ++ " " ++ episode
