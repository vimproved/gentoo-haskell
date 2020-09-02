# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -buildexamples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An experimental alternative hierarchy of numeric type classes"
HOMEPAGE="https://www.haskell.org/haskellwiki/Numeric_Prelude"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/non-negative-0.0.5:=[profile?] <dev-haskell/non-negative-0.2:=[profile?]
	>=dev-haskell/parsec-1:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-haskell/quickcheck-1:2=[profile?] <dev-haskell/quickcheck-3:2=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-1.0:=[profile?]
	>=dev-haskell/storable-record-0.0.1:=[profile?] <dev-haskell/storable-record-0.1:=[profile?]
	>=dev-haskell/utility-ht-0.0.6:=[profile?] <dev-haskell/utility-ht-0.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildexamples
}
