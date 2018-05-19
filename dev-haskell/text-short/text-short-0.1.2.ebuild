# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Memory-efficient representation of Unicode text strings"
HOMEPAGE="http://hackage.haskell.org/package/text-short"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="asserts"

RDEPEND=">=dev-haskell/hashable-1.2.6:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/semigroups-0.18.2:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-instances-0.3.14
		>=dev-haskell/tasty-1.0.0
		>=dev-haskell/tasty-hunit-0.10.0
		>=dev-haskell/tasty-quickcheck-0.10 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base        >= 4.7    && < 4.12' 'base        >= 4.7' \
		'tasty                >= 1.0.0  && < 1.1' 'tasty                >= 1.0.0' \
		'tasty-hunit          >= 0.10.0 && < 0.11' 'tasty-hunit          >= 0.10.0' \
		'tasty-quickcheck     >= 0.10   && < 0.11' 'tasty-quickcheck     >= 0.10' \
		'quickcheck-instances >= 0.3.14 && < 0.4' 'quickcheck-instances >= 0.3.14'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag asserts asserts)
}
