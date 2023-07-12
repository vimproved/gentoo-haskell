# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="HLS Plugin to expand TemplateHaskell Splices and QuasiQuotes"
HOMEPAGE="https://hackage.haskell.org/package/hls-splice-plugin"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/dlist:=[profile?]
	dev-haskell/extra:=[profile?]
	dev-haskell/foldl:=[profile?]
	dev-haskell/ghc-exactprint:=[profile?]
	~dev-haskell/ghcide-2.0.0.1:=[profile?]
	~dev-haskell/hls-plugin-api-2.0.0.1:=[profile?]
	dev-haskell/hls-refactor-plugin:=[profile?]
	dev-haskell/lens:=[profile?]
	dev-haskell/lsp:=[profile?]
	dev-haskell/retrie:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-lang/ghc:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( ~dev-haskell/hls-test-utils-2.0.0.1 )
"
