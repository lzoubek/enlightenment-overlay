# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_SERVER="http://itask-module.googlecode.com/svn/trunk"

inherit enlightenment

DESCRIPTION="Application launcher and taskbar based on the good old engage"
HOMEPAGE="http://code.google.com/p/itask-module"

IUSE=""

DEPEND=">=x11-wm/enlightenment-0.16.999.039
	media-libs/edje
	dev-libs/efreet"

RDEPEND="${DEPEND}"

