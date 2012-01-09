# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

ESVN_SUB_PROJECT="THEMES"
inherit efl

DESCRIPTION="E17 theme: 23Oz"

IUSE=""

DEPEND=">=media-libs/edje-9999"

RDEPEND="${DEPEND}"

src_compile() {
	edje_cc -DVERSION="${ESVN_WC_REVISION}" -id . -fd . default.edc -o ${PN}.edj || die edje_cc failed
}

src_install() {
#E17
insinto /usr/share/enlightenment/data/themes
doins "${S}"/${PN}.edj
}
