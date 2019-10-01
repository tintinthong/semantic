{-# LANGUAGE ApplicativeDo #-}
{-# LANGUAGE TypeApplications #-}
module CLI (main) where

import System.Environment


newtype SignalException = SignalException Signal
  deriving (Show, Typeable)
instance Exception SignalException


main :: IO ()
main = do
  args <- getArgs
  parseByteString getArgs
