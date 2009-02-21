# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

NEED_PYTHON="2.4"
ESVN_SUB_PROJECT="BINDINGS/python"
inherit enlightenment python distutils

DESCRIPTION="Python bindings for ecore"

IUSE="examples"

DEPEND=">=dev-python/setuptools-0.6_rc9
	>=dev-python/python-evas-9999
	>=dev-python/cython-0.9.8
	>=x11-libs/ecore-9999
	>=x11-libs/evas-9999
	>=media-libs/edje-9999"

src_unpack() {
	enlightenment_src_unpack
}

src_compile() {
	 distutils_src_compile
}

src_install() {
	distutils_src_install

	if use examples; then
		insinto /usr/share/doc//examples
		doins -r examples/*
	fi
}