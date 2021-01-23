# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
inherit distutils-r1

DESCRIPTION="Extract data from HTML and XML using XPath and CSS selectors"
HOMEPAGE="https://github.com/scrapy/parsel"
SRC_URI="https://github.com/scrapy/${PN}/archive/v${PV%_*}.tar.gz -> ${PN}-${PV%_*}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-python/w3lib-1.19.0[${PYTHON_USEDEP}]
	>=dev-python/lxml-2.3[${PYTHON_USEDEP}]
	>=dev-python/six-1.6.0[${PYTHON_USEDEP}]
	>=dev-python/cssselect-0.9[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"

src_prepare() {
	# don't require pytest-runner
	sed -i "/setup_require/d" setup.py || die
	eapply_user
}
