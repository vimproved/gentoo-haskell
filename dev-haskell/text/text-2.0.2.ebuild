# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: -bytestring-builder,-developer,-integer-simple

CABAL_FEATURES="lib profile haddock hoogle hscolour" # circular deps in test-suite
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="An efficient packed Unicode text type"
HOMEPAGE="https://github.com/haskell/text"

LICENSE="BSD-2"
SLOT="0/${PV}"
# (2023-06-09) hololeap <hololeap@protonmail.com>
# Keep this unkeyworded for now, many breakages likely
# KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="+simdutf"

# break cyclic dependencies:
RESTRICT=test

RDEPEND="
	>=dev-lang/ghc-9.4.1:=
	simdutf? (
		|| (
			sys-devel/clang
			sys-devel/gcc[cxx]
		)
	)
"
DEPEND="${RDEPEND}
"
#	test? (
#		>=dev-haskell/quickcheck-2.12.6 <dev-haskell/quickcheck-2.15
#		dev-haskell/tasty
#		dev-haskell/tasty-hunit
#		dev-haskell/tasty-inspection-testing
#		dev-haskell/tasty-quickcheck
#	)

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bytestring-builder \
		--flag=-developer \
		--flag=-integer-simple \
		$(cabal_flag simdutf simdutf)
}

CABAL_CORE_LIB_GHC_PV="9.4.4 9.4.5 9.4.7 9.6.2"
