#!/bin/bash

IFS=""

# Evaluation function that return either Pass or Fail information on stdout.
function evaluate_testset {
    TESTSET_NAME=$1
    TEST_TEXT=$2
    GROUND_TRUTH=$3
    
    RESULT=$(./get_entities.sh "$TEST_TEXT" data/lexicon_names.txt)

    if diff -y <(echo $GROUND_TRUTH) <(echo $RESULT); then
        echo -e "$TESTSET_NAME\tPass"
    else
        echo -e "$TESTSET_NAME\tFail"
    fi
}

TEST_1_AI1='23	29	marvin'

evaluate_testset "TEST_1" "born in New York City, marvin minsky, was an American cognitive scientist concerned largely with research of artificial intelligence" $TEST_1_AI1
