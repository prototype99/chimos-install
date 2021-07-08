#!/usr/bin/env bash
# vim: set sw=4 sts=4 et :

# Copyright (c) 2006 Stephen Bennett
#
# Based in part upon functions.sh from Baselayout, which is Copyright 1995-2005
# Gentoo Foundation and distributed under the terms of the GNU General
# Public License v2.
#
# This file is part of the Paludis package manager. Paludis is free software;
# you can redistribute it and/or modify it under the terms of the GNU General
# Public License, version 2, as published by the Free Software Foundation.
#
# Paludis is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc., 59 Temple
# Place, Suite 330, Boston, MA  02111-1307  USA

KV_major()
{
    [[ -z $1 ]] && return 1
    local KV=$@
    echo ${KV%%.*}
}

KV_minor()
{
    [[ -z $1 ]] && return 1
    local KV=$@
    KV=${KV#*.}
    echo ${KV%%.*}
}

KV_micro()
{
    [[ -z $1 ]] && return 1
    local KV=$@
    KV=${KV#*.*.}
    echo ${KV%%[^[:digit:]]*}
}

KV_to_int()
{
    [[ -z $1 ]] && return 1

    local major=$(KV_major "$1")
    local minor=$(KV_minor "$1")
    local micro=$(KV_micro "$1")
    echo $(( major * 65536 + minor * 256 + micro ))
}

get_KV()
{
    echo $(KV_to_int "$(uname -r)")
}
