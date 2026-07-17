#!/bin/bash

FILE="/Users/gianni/Downloads/Momentum2.ova"
EXPECTED="17FACC18FE6A6979159C4D0A09CC330602E81E68"

ACTUAL=$(shasum -a 1 "$FILE" | awk '{print toupper($1)}')

if [[ "$ACTUAL" == "$EXPECTED" ]]; then
    echo "Hash verificato."
else
    echo "Hash non verificato."
    echo "Atteso : $EXPECTED"
    echo "Trovato: $ACTUAL"
fi