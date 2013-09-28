################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="libxcb"
PKG_VERSION="1.9"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://xcb.freedesktop.org"
PKG_URL="http://xcb.freedesktop.org/dist/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS=""
<<<<<<< HEAD:packages/x11/lib/libxcb/meta
PKG_BUILD_DEPENDS="toolchain util-macros Python-host xcb-proto libpthread-stubs libXau"
=======
PKG_BUILD_DEPENDS_TARGET="toolchain util-macros Python-host xcb-proto libpthread-stubs libXau"
>>>>>>> upstream/openelec-3.2:packages/x11/lib/libxcb/package.mk
PKG_PRIORITY="optional"
PKG_SECTION="x11/lib"
PKG_SHORTDESC="libxcb: X C-language Bindings library"
PKG_LONGDESC="X C-language Bindings library."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared"

pre_configure_target() {
  PYTHON_LIBDIR="`ls -d $SYSROOT_PREFIX/usr/lib/python*`"
  PYTHON_TOOLCHAIN_PATH=`ls -d $PYTHON_LIBDIR/site-packages`
  PKG_CONFIG="$PKG_CONFIG --define-variable=pythondir=$PYTHON_TOOLCHAIN_PATH"
  PKG_CONFIG="$PKG_CONFIG --define-variable=xcbincludedir=$SYSROOT_PREFIX/usr/share/xcb"
}
