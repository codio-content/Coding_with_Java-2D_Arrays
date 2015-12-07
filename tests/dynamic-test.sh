#!/bin/bash
. /home/codio/workspace/tests/js-test-lib.sh

start_js_test 'dynamic.js'
run_js_test '2 3' "[ [ 'R0C0', 'R0C1', 'R0C2' ], [ 'R1C0', 'R1C1', 'R1C2' ] ]"
end_js_test