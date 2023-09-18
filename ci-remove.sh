#!/bin/bash
cd "$(dirname "$0")"
source 'ci-library.sh'
mkdir artifacts
cd artifacts
REMOVE_PACKAGE="$1"
if [ "$MINGW_ARCH" == "ucrt64" ]; then
  case $REMOVE_PACKAGE in
    clang | clang-analyzer | clang-tools-extra | compiler-rt | gcc-compat | lld | llvm | llvm-libs )
      success "Skipping $REMOVE_PACKAGE for $MINGW_ARCH";;
  esac
fi
echo "REMOVING PACKAGE ${REMOVE_PACKAGE} from ${PACMAN_REPOSITORY}"
execute 'Updating package index' remove_from_repository "${PACMAN_REPOSITORY}" "${REMOVE_PACKAGE}"
success 'Package removal successful'
exit 0
