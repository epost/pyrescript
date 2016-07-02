module Foo where

import Data.Functor

infixl 4 wat as +

wat :: forall a b. a -> b -> a
wat x _ =  x

foo :: Int
foo = 1 + 2

bar :: Boolean
bar = true

baz :: Boolean
baz = false

xs :: Array Int
xs = [1,2,3]

xs' :: Array Int
xs' = map (_+1) xs

-- data Bla = Quux | Baz

