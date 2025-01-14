module Cachix.Types.BinaryCache where

import Cachix.Types.Permission (Permission)
import Data.Aeson (FromJSON, ToJSON)
import Data.Swagger (ToSchema)
import Protolude

data BinaryCache = BinaryCache
  { name :: Text,
    uri :: Text,
    isPublic :: Bool,
    publicSigningKeys :: [Text],
    githubUsername :: Text,
    permission :: Permission,
    compression :: CompressionMode
  }
  deriving (Show, Generic, FromJSON, ToJSON, ToSchema, NFData)

data CompressionMode = XZ | ZSTD
  deriving (Show, Generic, FromJSON, ToJSON, ToSchema, NFData)
