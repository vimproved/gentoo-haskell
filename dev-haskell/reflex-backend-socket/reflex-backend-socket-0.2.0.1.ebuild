# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Reflex bindings for TCP sockets"
HOMEPAGE="https://github.com/qfpl/reflex-backend-socket/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="examples"

CABAL_CHDEPS=(
	'base              >= 4.12    && < 4.16' 'base >=4.12'
	'lens              >= 4.15.4  && < 4.20 || >= 5 && <5.2' 'lens >=4.15.4 && <4.20 || >=5'
	'reflex            >= 0.7.1.0 && < 0.9' 'reflex >=0.7.1.0'
	'semialign         >= 1       && < 1.3' 'semialign >=1'
	'these             >= 1       && < 1.2' 'these >=1'
)

PATCHES=(
	"${FILESDIR}/${PN}-0.2.0.1-add-examples-flag.patch"
)

RDEPEND="
	dev-haskell/lens:=[profile?]
	>=dev-haskell/network-2.6:=[profile?] <dev-haskell/network-3.2
	>=dev-haskell/reflex-0.7.1.0:=[profile?]
	>=dev-haskell/semialign-1:=[profile?]
	>=dev-haskell/semigroupoids-5.2.2:=[profile?] <dev-haskell/semigroupoids-5.4
	>=dev-haskell/these-1:=[profile?]
	>=dev-lang/ghc-8.10.6:=
	|| (
		( >=dev-haskell/lens-4.15.4 <dev-haskell/lens-4.20 )
		>=dev-haskell/lens-5
	)
	dev-haskell/lens:=[profile?]
	examples? (
		=dev-haskell/witherable-0.4*:=[profile?]
	)
"
DEPEND="
	${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
"

# Rename example executables
src_prepare() {
	local example_exes=(
		server
		client
		others
	)

	export CABAL_CHBINS=()

	if use examples; then
		for e in "${example_exes[@]}"; do
			export CABAL_CHBINS+=(
				"example-${e}"
				"${PN}-example-${e}"
			)
		done
	fi

	haskell-cabal_src_prepare
}

src_configure() {
	config_flags=(
		$(cabal_flag examples examples)
	)

	haskell-cabal_src_configure "${config_flags[@]}"
}
