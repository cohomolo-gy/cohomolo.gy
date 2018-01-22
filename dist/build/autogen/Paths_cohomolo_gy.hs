{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_cohomolo_gy (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/emilypillmore/Library/Haskell/bin"
libdir     = "/Users/emilypillmore/Library/Containers/com.haskellformac.Haskell.basic/Data/Library/Application Support/lib/ghc/cohomolo-gy-0.1.0.0-I9SJf7hUZxDAsFtSsdbDKo"
dynlibdir  = "/Users/emilypillmore/Library/Containers/com.haskellformac.Haskell.basic/Data/Library/Application Support/lib/ghc/cohomolo-gy-0.1.0.0-I9SJf7hUZxDAsFtSsdbDKo"
datadir    = "/Users/emilypillmore/Library/Containers/com.haskellformac.Haskell.basic/Data/Library/Application Support/share/cohomolo-gy-0.1.0.0"
libexecdir = "/Users/emilypillmore/Library/Containers/com.haskellformac.Haskell.basic/Data/Library/Application Support/libexec"
sysconfdir = "/Users/emilypillmore/Library/Containers/com.haskellformac.Haskell.basic/Data/Library/Application Support/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "cohomolo_gy_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "cohomolo_gy_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "cohomolo_gy_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "cohomolo_gy_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "cohomolo_gy_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "cohomolo_gy_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
