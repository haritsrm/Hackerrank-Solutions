<?php

// Complete the arrayManipulation function below.
function arrayManipulation($n, $queries) {
    $arr = [];
    foreach($queries as $q){
        $arr[$q[0]] += $q[2];
        $arr[$q[1]+1] -= $q[2];
    }
    ksort($arr);
    
    $max = 0;
    $tmp = 0;
    foreach($arr as $a){
        $tmp += $a;
        if($tmp > $max){
            $max = $tmp;
        }
    }
    return $max;

}

$fptr = fopen(getenv("OUTPUT_PATH"), "w");

$stdin = fopen("php://stdin", "r");

fscanf($stdin, "%[^\n]", $nm_temp);
$nm = explode(' ', $nm_temp);

$n = intval($nm[0]);

$m = intval($nm[1]);

$queries == array();

for ($i = 0; $i < $m; $i++) {
    fscanf($stdin, "%[^\n]", $queries_temp);
    $queries[] = array_map('intval', preg_split('/ /', $queries_temp, -1, PREG_SPLIT_NO_EMPTY));
}

$result = arrayManipulation($n, $queries);

fwrite($fptr, $result . "\n");

fclose($stdin);
fclose($fptr);
