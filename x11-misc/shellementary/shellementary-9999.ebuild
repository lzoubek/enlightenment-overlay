# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

E_PKG_IUSE="nls"

PYTHON_DEPEND="*:2.4"
ESVN_SUB_PROJECT="PROTO"
inherit efl python

DESCRIPTION="Tool to display Elementary dialogs from the command line and shell scripts"

IUSE=""

RDEPEND=">=dev-python/cython-0.9.8
	>=dev-libs/ecore-9999
	>=dev-python/python-evas-9999
	>=media-libs/elementary-9999
	>=media-libs/edje-9999"

DEPEND="${RDEPEND}"

src_unpack() {
	efl_src_unpack
}

src_compile() {
	${python} setup.py build --prefix="${T}/usr"

}

src_install() {
	${python} setup.py install --prefix="${D}/usr"
}
