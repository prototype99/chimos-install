/* vim: set sw=4 sts=4 et foldmethod=syntax : */

/*
 * Copyright (c) 2005, 2006, 2007, 2008 Ciaran McCreesh
 *
 * This file is part of the Paludis package manager. Paludis is free software;
 * you can redistribute it and/or modify it under the terms of the GNU General
 * Public License version 2, as published by the Free Software Foundation.
 *
 * Paludis is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 59 Temple
 * Place, Suite 330, Boston, MA  02111-1307  USA
 */



#ifndef PALUDIS_GUARD_PALUDIS_ABOUT_HH
#define PALUDIS_GUARD_PALUDIS_ABOUT_HH 1

/** \file
 * Defines constants giving the Paludis version number and information about
 * how Paludis was built.
 *
 * \section Examples
 *
 * - \ref example_about.cc "example_about.cc"
 *
 * \ingroup g_about
 */

/**
 * The package name (eg Paludis).
 *
 * \ingroup g_about
 */
#define PALUDIS_PACKAGE "paludis"

/**
 * The major version (eg 0.4.1 -> 0).
 *
 * \ingroup g_about
 */
#define PALUDIS_VERSION_MAJOR 3

/**
 * The minor version (eg 0.4.1 -> 4).
 *
 * \ingroup g_about
 */
#define PALUDIS_VERSION_MINOR 0

/**
 * The micro version (eg 0.4.1 -> 1).
 *
 * \ingroup g_about
 */
#define PALUDIS_VERSION_MICRO 0

/**
 * The suffix used for so names (eg "0.30" or "0.31_15ece615").
 *
 * \ingroup g_about
 */
#define PALUDIS_PC_SLOT "3.0"

/**
 * The version suffix (eg "_alpha1"), often an empty string.
 *
 * \ingroup g_about
 */
#define PALUDIS_VERSION_SUFFIX ""

/**
 * The version, two digits per part (eg 1.3.5 -> 10305).
 *
 * \ingroup g_about
 */
#define PALUDIS_VERSION ((100 * 100 * PALUDIS_VERSION_MAJOR) \
        + (100 * PALUDIS_VERSION_MINOR) + PALUDIS_VERSION_MICRO)

/**
 * The Git head used to build this binary, if applicable (eg "deadbeef" or "1.0.0-40-f00-dirty" or "").
 *
 * \ingroup g_about
 * \since 0.28
 */
#define PALUDIS_GIT_HEAD ""

/**
 * The CXXFLAGS used to build Paludis.
 *
 * \ingroup g_about
 */
#define PALUDIS_BUILD_CXXFLAGS "-O3 -fgraphite-identity -floop-nest-optimize -fdevirtualize-at-ltrans -fipa-pta -fno-semantic-interposition -flto=4 -fuse-linker-plugin -march=native -pipe -march=native -falign-functions=32 -Wl,-O1 -Wl,--as-needed -Wall -Wextra -Wold-style-cast -Wredundant-decls -Wstrict-null-sentinel -Wmissing-noreturn -Woverloaded-virtual -Winit-self -Wunreachable-code -Wunused -Wshadow -Wwrite-strings -Wfloat-equal -Wno-ignored-qualifiers -Wno-non-virtual-dtor -fvisibility=hidden -fvisibility-inlines-hidden"

/**
 * The LDFLAGS used to build Paludis.
 *
 * \ingroup g_about
 */
#define PALUDIS_BUILD_LDFLAGS "-Wl,-O1 -Wl,--as-needed -O3 -fgraphite-identity -floop-nest-optimize -fdevirtualize-at-ltrans -fipa-pta -fno-semantic-interposition -flto=4 -fuse-linker-plugin -march=native -pipe -falign-functions=32"

/**
 * The compiler used to build Paludis.
 *
 * \ingroup g_about
 */
#define PALUDIS_BUILD_CXX "/usr/lib64/ccache/bin/x86_64-pc-linux-gnu-g++"

/**
 * The user who built Paludis.
 *
 * \ingroup g_about
 */
#define PALUDIS_BUILD_USER "portage"

/**
 * The host on which Paludis was built.
 *
 * \ingroup g_about
 */
#define PALUDIS_BUILD_HOST "o.possum"

/**
 * The date when Paludis was built.
 *
 * \ingroup g_about
 */
#define PALUDIS_BUILD_DATE "%&-02-15T12:12:23+0000"

#endif
