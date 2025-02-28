# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="A reflective batch tester for Haskell"
HOMEPAGE="https://github.com/davidsiegel/quicktest"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
	dev-haskell/mtl
	>=dev-lang/ghc-6.10.4
"

PATCHES=( "${FILESDIR}/${P}-ghc-7.10.patch" )

src_prepare() {
	default

	cabal_chdeps \
		'haskell98,' 'base,'
}
