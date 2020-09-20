{-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam

Size information for an inductive synthesis problem (ISP).
-}

module Oracle.Examples.Synth.ISPInfo where

import Oracle.Data.Embeddable

data ISPInfo = ISPInfo {
  nTrain :: Int,
  nTest  :: Int
  } deriving (Eq, Ord, Show)

isEmpty :: ISPInfo -> Bool
isEmpty info = nTrain info == 0 && nTest info == 0

instance HasToEmbeddable ISPInfo where
  toEmbeddable (ISPInfo nTrain nTest) = ERecord "ISPInfo" [
    ("nTrain",   toEmbeddable nTrain),
    ("nTest",    toEmbeddable nTest)
    ]
