# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A declarative terminal user interface library"
HOMEPAGE="https://github.com/jtdaugherty/brick/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="demos"

RDEPEND="dev-haskell/config-ini:=[profile?]
	dev-haskell/contravariant:=[profile?]
	>=dev-haskell/data-clist-0.1:=[profile?]
	dev-haskell/dlist:=[profile?]
	>=dev-haskell/microlens-0.3.0.0:=[profile?]
	dev-haskell/microlens-mtl:=[profile?]
	dev-haskell/microlens-th:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/text-zipper-0.7.1:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/vty-5.23.1:=[profile?]
	>=dev-haskell/word-wrap-0.2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag demos demos)
}
