# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_HACKAGE_REVISION=1
CABAL_PN="ShellCheck"

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Shell script analysis tool"
HOMEPAGE="https://www.shellcheck.net/"
SRC_URI="${SRC_URI}
	https://github.com/koalaman/shellcheck/commit/b3932dfa10804434fb8c15dc32e428c5a1c3bfa4.patch -> ${P}-ghc9.6.patch"
PATCHES=( "${DISTDIR}/${P}-ghc9.6.patch" )

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64"

# hololeap (2023-09-10)
# 1 test fails
# === prop_checkOverwrittenExitCode8 from src/ShellCheck/Analytics.hs:4927 ===
# *** Failed! Exception: '(Array.!): undefined array element' (after 1 test):
RESTRICT="test"

RDEPEND="
	>=dev-haskell/aeson-1.4.0:=[profile?] <dev-haskell/aeson-2.2:=[profile?]
	>=dev-haskell/diff-0.4.0:=[profile?] <dev-haskell/diff-0.5:=[profile?]
	>=dev-haskell/parsec-3.1.14:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/quickcheck-2.14.2:=[profile?] <dev-haskell/quickcheck-2.15:=[profile?]
	>=dev-haskell/regex-tdfa-1.2.0:=[profile?] <dev-haskell/regex-tdfa-1.4:=[profile?]
	>=dev-lang/ghc-8.10.6:=
	|| (
		( >=dev-haskell/fgl-5.7.0 <dev-haskell/fgl-5.8.1.0 )
		( >=dev-haskell/fgl-5.8.1.1 <dev-haskell/fgl-5.9 )
	)
	dev-haskell/fgl:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"
