#!/usr/bin/env bash
#author: harshvardhan j. pandit
#date: 24-04-2019
# GDPR SEMANTiCS demo
# run shacl validation on data using constraints

# requirements: shaclvalidate.sh should in PATH

# PART A: Validation on given consent
shaclvalidate.sh -datafile ./data.ttl -shapesfile constraints-given-consent.ttl > results-given-consent.ttl

# PART B: Validate on given consent but delegate some constraints to a model
shaclvalidate.sh -datafile ./data.ttl -shapesfile constraints-given-consent.ttl > results-model-consent.ttl
shaclvalidate.sh -datafile ./results-model-consent.ttl -shapesfile constraints-given-consent-with-model.ttl > results-given-consent-with-model.ttl
