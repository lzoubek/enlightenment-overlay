# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

ESVN_SUB_PROJECT="E-MODULES-EXTRA"
ESVN_URI_APPEND="${PN#e_modules-}"
E_PKG_IUSE="nls"
inherit efl

DESCRIPTION="E-Tiling is a tiling module the Enlightenment Window Manager"

IUSE=""

DEPEND="x11-wm/enlightenment:0.17
	>=media-libs/edje-9999
	>=dev-libs/ecore-9999"

RDEPEND="${DEPEND}"
