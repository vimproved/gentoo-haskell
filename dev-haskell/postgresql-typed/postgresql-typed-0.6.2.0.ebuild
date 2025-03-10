# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Needs database access at compile time:  test-suite"
inherit haskell-cabal

DESCRIPTION="PostgreSQL interface with compile-time SQL type checking, optional HDBC backend"
HOMEPAGE="https://github.com/dylex/postgresql-typed"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+aeson +binary +hdbc +md5 +scientific +text +tls +uuid"

RESTRICT=test # needs database access at compile time

RDEPEND=">=dev-haskell/attoparsec-0.12:=[profile?] <dev-haskell/attoparsec-0.15:=[profile?]
	dev-haskell/haskell-src-meta:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/old-locale:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	aeson? ( >=dev-haskell/aeson-0.7:=[profile?] )
	binary? ( >=dev-haskell/postgresql-binary-0.8:=[profile?]
			>=dev-haskell/scientific-0.3:=[profile?]
			>=dev-haskell/text-1:=[profile?]
			>=dev-haskell/uuid-1.3:=[profile?] )
	!binary? ( scientific? ( >=dev-haskell/scientific-0.3:=[profile?] )
			text? ( >=dev-haskell/text-1:=[profile?] )
			uuid? ( >=dev-haskell/uuid-1.3:=[profile?] ) )
	hdbc? ( >=dev-haskell/hdbc-2.2:=[profile?] )
	md5? ( >=dev-haskell/cryptonite-0.5:=[profile?]
		>=dev-haskell/memory-0.5:=[profile?] )
	tls? ( dev-haskell/data-default:=[profile?]
		dev-haskell/tls:=[profile?]
		dev-haskell/x509:=[profile?]
		dev-haskell/x509-store:=[profile?]
		dev-haskell/x509-validation:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag aeson aeson) \
		$(cabal_flag binary binary) \
		$(cabal_flag hdbc hdbc) \
		$(cabal_flag md5 md5) \
		$(cabal_flag scientific scientific) \
		$(cabal_flag text text) \
		$(cabal_flag tls tls) \
		$(cabal_flag uuid uuid)
}
