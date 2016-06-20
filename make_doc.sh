#!/bin/env bash

rm -R ./api-doc 2>/dev/null
git archive master api_doc | tar xf -
mv api_doc api-doc