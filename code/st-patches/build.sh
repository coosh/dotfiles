#!/usr/bin/env bash
cd ../st
git reset --hard master
patch < ../st-patches/st-scrollback-20181224-096b125.diff
patch < ../st-patches/st-scrollback-mouse-0.8.diff
patch -p1 < ../st-patches/st-visualbell2-basic-2018-10-16-30ec9a3.patch
patch < ../st-patches/st-xresources-20190105-9f80f67.diff

