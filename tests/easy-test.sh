#!/bin/bash
. /home/codio/workspace/tests/js-test-lib.sh

start_js_test 'easy.js'
run_js_test ',, 1,2,4 ,,' '4'
run_js_test '1,2,3,4,5 9,8,7,6,5 11,22,33,44,55' '7'
end_js_test
