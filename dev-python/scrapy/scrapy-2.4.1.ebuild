# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
inherit distutils-r1

DESCRIPTION="A high-level Web Crawling and Web Scraping framework"
HOMEPAGE="https://scrapy.org/"
SRC_URI="https://github.com/${PN}/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT=0
KEYWORDS="~amd64 ~x86"
IUSE=""

# The 'PyDispatcher>=2.0.5' distribution was not found and is required by Scrapy
# https://bugs.gentoo.org/684734
RDEPEND="${PYTHON_DEPS}
	>=dev-python/twisted-17.9.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.0[${PYTHON_USEDEP}]
	>=dev-python/cssselect-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/lxml-3.5.0[${PYTHON_USEDEP}]
	>=dev-python/parsel-1.5.0[${PYTHON_USEDEP}]
	>=dev-python/pydispatcher-2.0.5[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-16.2.0[${PYTHON_USEDEP}]
	>=dev-python/queuelib-1.4.2[${PYTHON_USEDEP}]
	>=dev-python/service_identity-16.0.0[${PYTHON_USEDEP}]
	>=dev-python/w3lib-1.17.0[${PYTHON_USEDEP}]
	>=dev-python/zope-interface-4.1.3[${PYTHON_USEDEP}]
	>=dev-python/protego-0.1.15[${PYTHON_USEDEP}]
	>=dev-python/itemloaders-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/itemadapter-0.1.0[${PYTHON_USEDEP}]
	"
DEPEND="${RDEPEND}"
