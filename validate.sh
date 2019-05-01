#!/usr/bin/env bash
#author: harshvardhan j. pandit
#date: 24-04-2019
echo "GDPR SEMANTiCS demo"
echo "runs shacl validation on data using ./constraints/constraints"

# requirements: shaclvalidate.sh should in PATH
if [[ -z "${SHACLROOT}" ]]; then
  echo "SHACLROOT is not defined; you can execute this script by pointing it to the SHACL binary";
  exit 1;
fi

# PART A: Validate system
echo -n "Part A: Validating model of system..."
shaclvalidate.sh -datafile ./data/data.ttl -shapesfile ./constraints/constraintsA-system-model.ttl > ./results/resultsA-system-model.ttl 2>>test.log
if [ $? -eq 0 ]; then
	echo "done --> ./results/resultsA-system-model.ttl"
else
    echo "failed. See test.log for details."
fi


# PART B: Validation on given consent
echo -n "Part B: Validating given consent..."
shaclvalidate.sh -datafile ./data/data.ttl -shapesfile ./constraints/constraintsB-given-consent.ttl > ./results/resultsB-given-consent.ttl 2>>test.log
if [ $? -eq 0 ]; then
	echo "done --> ./results/resultsB-given-consent.ttl"
else
    echo "failed. See test.log for details."
fi

# PART C: Validate on given consent but delegate some ./constraints/constraints to a model
echo "Part C: Validating model of system..."
# C1: validate the consent model
if [ $? -eq 0 ]; then
	echo -n "Part C1: Validating consent collection model..."
else
    echo "failed. See test.log for details."
fi
shaclvalidate.sh -datafile ./data/data.ttl -shapesfile ./constraints/constraintsC-model-consent.ttl > ./results/resultsC-model-consent.ttl 2>>test.log
echo "done --> ./results/resultsC-model-consent.ttl"
# C2: validate the given consent in data graph
echo -n "Part C2: Validating given consent attributes..."
shaclvalidate.sh -datafile ./data/data.ttl -shapesfile ./constraints/constraintsC-given-consent-using-model.ttl > ./results/resultsC-given-consent.ttl 2>>test.log
if [ $? -eq 0 ]; then
	echo "done --> ./results/resultsC-given-consent.ttl"
else
    echo "failed. See test.log for details."
fi
# C3: validate the given consent against the model
echo -n "Part C3: Validating given consent based using model..."
shaclvalidate.sh -datafile ././results/resultsC-model-consent.ttl -shapesfile ./constraints/constraintsC-given-consent-using-model.ttl > ./results/resultsC-given-consent-using-model.ttl 2>>test.log
if [ $? -eq 0 ]; then
	echo "done --> ./results/resultsC-given-consent-using-model.ttl"
else
    echo "failed. See test.log for details."
fi
