# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Concrete functor and monad transformers"
HOMEPAGE="https://hackage.haskell.org/package/transformers"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~amd64-linux"

RDEPEND="
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
"
CABAL_CORE_LIB_GHC_PV="8.10.6 8.10.7 9.0.2 9.2.4 9.2.5 9.2.6 9.2.7 9.2.8"
