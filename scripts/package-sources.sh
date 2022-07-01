#!/usr/bin/env bash

set -xe

version=${1:-"$(date +'%Y.%m.%d')"}
build_dir=${2:-"build"}
archive_name="libcv_c_api.src-${version}.tar.gz"

rm -fr "${build_dir}"
mkdir -p "${build_dir}"

tar -zcvf "/tmp/${archive_name}" scripts/ src/
mv "/tmp/${archive_name}" "${build_dir:?}/${archive_name}"
