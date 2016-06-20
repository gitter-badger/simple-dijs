#!/bin/env bash

rm -R ./api-doc 2>/dev/null
git archive master api_doc | tar xf -
mv api_doc api-doc
rm api-doc/index.html

SED_EXPR='s#<a href="index.html">Home</a>#<a href="..">\&laquo; Back to project</a>#'

sed -i "$SED_EXPR" api-doc/Di.html
sed -i "$SED_EXPR" api-doc/di.js.html