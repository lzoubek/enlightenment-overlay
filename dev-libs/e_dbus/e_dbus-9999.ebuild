# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="doc"
inherit efl

DESCRIPTION="Enlightenment's (Ecore) integration to DBus"
HOMEPAGE="http://trac.enlightenment.org/e/wiki/E_Dbus"

IUSE="connman libnotify bluetooth ofono ukit"

RDEPEND="
	>=dev-libs/eina-9999
	>=dev-libs/ecore-9999
	sys-apps/dbus
	libnotify? ( >=media-libs/evas-9999 )
	ukit? ( sys-power/upower sys-fs/udisks )"
DEPEND="${RDEPEND}"

src_configure() {
	export MY_ECONF="
	  ${MY_ECONF}
	  $(use_enable connman econnman)
	  $(use_enable libnotify enotify)
	  $(use_enable bluetooth ebluez)
	  $(use_enable ofono eofono)
	  $(use_enable ukit eukit)
	"
	efl_src_configure
}
