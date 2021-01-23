# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7..9} )
inherit distutils-r1

DESCRIPTION="Common interface for data container classes"
HOMEPAGE="https://github.com/scrapy/itemadapter"
SRC_URI="https://github.com/scrapy/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="amd64 arm64 x86"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
