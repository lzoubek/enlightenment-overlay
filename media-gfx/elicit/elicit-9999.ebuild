# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit enlightenment

DESCRIPTION="tool for examining images on your desktop"
HOMEPAGE="http://enlightenment.org/pages/elicit.html"

IUSE=""

DEPEND=">=x11-libs/evas-0.9.9
	>=x11-libs/ecore-0.9.9
	>=media-libs/edje-0.5.0
	>=x11-libs/esmart-0.0.3
	>=media-libs/imlib2-1.2.0"

RDEPEND="${DEPEND}"

