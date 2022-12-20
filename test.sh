
for arg; do
    search_dir="results $arg"
    for entry in "$search_dir"/* 
    do
        totalTests=$(($totalTests+$(cat ./"$entry" | jq '.totalTests')))
        totalPassed=$(($totalPassed+$(cat ./"$entry" | jq '.totalPassed')))
        totalFailed=$(($totalFailed+$(cat ./"$entry" | jq '.totalFailed')))
        totalSkipped=$(($totalSkipped+$(cat ./"$entry" | jq '.totalSkipped')))
    done
done

JSON_STRING=$( jq -n \
                  --arg totalTests "$totalTests" \
                  --arg totalPassed "$totalPassed" \
                  --arg totalFailed "$totalFailed" \
                  --arg totalSkipped "$totalSkipped" \
                  '$ARGS.named' )

echo $JSON_STRING > test_run.json

