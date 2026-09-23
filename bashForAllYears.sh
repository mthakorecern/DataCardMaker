#!/bin/bash
mkdir -p logs
echo "Processing 2024"
(
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2024 --Channel tt --recreate --Path /hdfs/store/user/mithakor/2024_Processed_Weighted/MC/Selected_xsec/ -o 2024/
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2024 --Channel et --update --Path /hdfs/store/user/mithakor/2024_Processed_Weighted/MC/Selected_xsec/ -o  2024/
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2024 --Channel mt --update --Path /hdfs/store/user/mithakor/2024_Processed_Weighted/MC/Selected_xsec/ -o  2024/
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2024 --Channel lt --update --Path /hdfs/store/user/mithakor/2024_Processed_Weighted/MC/Selected_xsec/ -o  2024/
) > logs/2024.log 2>&1 &


# Wait for all background processes to complete
wait
echo "All processes completed."
