#!/bin/bash
. env.sh

if [ ! -f ${TF_FILE} ]; then
    (cd tensorflow && {
        cat ${TF_FILE}.tar.gz.a* > ${TF_FILE}.tar.gz
        tar xzf ${TF_FILE}.tar.gz
        mv ${TF_FILE} ../
        rm -f ${TF_FILE}.tar.gz
    })
fi

rm -rf dl
mkdir dl
(cd dl && python3.7 -m pip --disable-pip-version-check download ../${TF_FILE})
