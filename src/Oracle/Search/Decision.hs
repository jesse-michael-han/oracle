{-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam
-}

module Oracle.Search.Decision where

import Oracle.Data.Embeddable

import Data.Sequence (Seq)

data Decision = Decision {
  snapshot  :: Embeddable,
  choices   :: Seq Embeddable, -- TODO: Vector?
  choiceIdx :: Int,
  score     :: Float
  } deriving (Eq, Ord, Show)