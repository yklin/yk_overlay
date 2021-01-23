# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
inherit distutils-r1

DESCRIPTION="Library to populate items using XPath and CSS with a convenient API"
HOMEPAGE="https://github.com/scrapy/itemloaders"
SRC_URI="https://github.com/scrapy/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="amd64 arm64 x86"
SLOT="0"
IUSE=""

RDEPEND="
	>=dev-python/w3lib-1.17.0[${PYTHON_USEDEP}]
	>=dev-python/parsel-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/jmespath-0.9.5[${PYTHON_USEDEP}]
	>=dev-python/itemadapter-0.1.0[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
