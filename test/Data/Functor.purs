module Data.Functor where

-- class Functor (f a) where
class Functor f where
  map :: forall a b. (a -> b) -> f a -> f b

instance arrayFunctor :: Functor Array where
  map = mapArray

foreign import mapArray :: forall a b. (a -> b) -> Array a -> Array b
