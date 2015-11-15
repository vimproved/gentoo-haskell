# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -old-webkit

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="DOM library that supports both GHCJS and WebKitGTK"
HOMEPAGE="http://hackage.haskell.org/package/ghcjs-dom"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+gtk3 jsc +jsffi webkit"

RDEPEND=">=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-haskell/text-0.11.0.6:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.3.0.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gtk3? ( >=dev-haskell/gtk3-0.13.0.0:=[profile?] <dev-haskell/gtk3-0.15:=[profile?]
		>=dev-haskell/webkitgtk3-0.14.0.0:=[profile?] <dev-haskell/webkitgtk3-0.15:=[profile?] )
	!gtk3? ( >=dev-haskell/gtk-0.13.0.0:=[profile?] <dev-haskell/gtk-0.14:=[profile?]
			>=dev-haskell/webkit-0.14.0.0:=[profile?] <dev-haskell/webkit-0.15:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag gtk3 gtk3) \
		$(cabal_flag jsc jsc) \
		$(cabal_flag jsffi jsffi) \
		--flag=-old-webkit \
		$(cabal_flag webkit webkit)
}
