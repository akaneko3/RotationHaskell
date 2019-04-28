module Lib
    ( rotate
    ) where

rotate :: Int -> Int -> Int -> Int
rotate x y z | x <= y    = y
             | otherwise = rotate (rotate (x - 1) y z) (rotate (y - 1) z x) (rotate (z - 1) x y)
