# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Drop test-suite: circular depend
inherit haskell-cabal

DESCRIPTION="A model for human colour/color perception"
HOMEPAGE="https://www.haskell.org/haskellwiki/Colour"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""
# circular dependencies: colour -> ansi-terminal -> test-framework -> colour
RESTRICT=test

RDEPEND=">=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"
