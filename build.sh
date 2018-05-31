#!/bin/bash
# Patch
patch -Np1 -i "${SHED_PKG_PATCH_DIR}/ninja-1.8.2-add_NINJAJOBS_var-1.patch" &&
# Configure and Build
python3 configure.py --bootstrap &&
# Install
install -vDm755 ninja "${SHED_FAKE_ROOT}/usr/bin/ninja" &&
install -vDm644 misc/ninja.vim "${SHED_FAKE_ROOT}/usr/share/vim/vim80/syntax/ninja.vim" &&
install -vDm644 misc/bash-completion "${SHED_FAKE_ROOT}/usr/share/bash-completion/completions/ninja" &&
install -vDm644 misc/zsh-completion "${SHED_FAKE_ROOT}/usr/share/zsh/site-functions/_ninja"
