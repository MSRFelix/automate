#!/bin/bash

echo "What library/function/topic are you looking for?"

read ans
py -m pydoc $ans
