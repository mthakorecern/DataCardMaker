#!/bin/bash
mkdir -p logs
echo "Processing 2018"
(
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2018 --Channel tt --recreate --Path /hdfs/store/user/gparida/HHbbtt/Framework_Processed_Files/Full_Production_CMSSW_13_0_13_Nov24_23/CommonAnalysis_6_WithSystematicScripts_April1_25/AllWeightAndSystematics_BRfix_Sept28_2025/2018/ -o 2018/Oct1_2025_preCWR
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2018 --Channel lt --update --Path /hdfs/store/user/gparida/HHbbtt/Framework_Processed_Files/Full_Production_CMSSW_13_0_13_Nov24_23/CommonAnalysis_6_WithSystematicScripts_April1_25/AllWeightAndSystematics_BRfix_Sept28_2025/2018/ -o 2018/Oct1_2025_preCWR
) > logs/2018.log 2>&1 &

echo "Processing 2017"
(
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2017 --Channel tt --recreate --Path /hdfs/store/user/gparida/HHbbtt/Framework_Processed_Files/Full_Production_CMSSW_13_0_13_Nov24_23/CommonAnalysis_6_WithSystematicScripts_April1_25/AllWeightAndSystematics_BRfix_Sept28_2025/2017/ -o 2017/Oct1_2025_preCWR
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2017 --Channel lt --update --Path /hdfs/store/user/gparida/HHbbtt/Framework_Processed_Files/Full_Production_CMSSW_13_0_13_Nov24_23/CommonAnalysis_6_WithSystematicScripts_April1_25/AllWeightAndSystematics_BRfix_Sept28_2025/2017/ -o 2017/Oct1_2025_preCWR
) > logs/2017.log 2>&1 &

echo "Processing 2016"
(
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2016 --Channel tt --recreate --Path /hdfs/store/user/gparida/HHbbtt/Framework_Processed_Files/Full_Production_CMSSW_13_0_13_Nov24_23/CommonAnalysis_6_WithSystematicScripts_April1_25/AllWeightAndSystematics_BRfix_Sept28_2025/2016/ -o 2016/Oct1_2025_preCWR
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2016 --Channel lt --update --Path /hdfs/store/user/gparida/HHbbtt/Framework_Processed_Files/Full_Production_CMSSW_13_0_13_Nov24_23/CommonAnalysis_6_WithSystematicScripts_April1_25/AllWeightAndSystematics_BRfix_Sept28_2025/2016/ -o 2016/Oct1_2025_preCWR
) > logs/2016.log 2>&1 &

echo "Processing 2016APV"
(
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2016APV --Channel tt --recreate --Path /hdfs/store/user/gparida/HHbbtt/Framework_Processed_Files/Full_Production_CMSSW_13_0_13_Nov24_23/CommonAnalysis_6_WithSystematicScripts_April1_25/AllWeightAndSystematics_BRfix_Sept28_2025/2016APV/ -o 2016APV/Oct1_2025_preCWR
    python3 MakeInputRootFilesForDataCardsWithSystematicsFinalzingResults.py --year 2016APV --Channel lt --update --Path /hdfs/store/user/gparida/HHbbtt/Framework_Processed_Files/Full_Production_CMSSW_13_0_13_Nov24_23/CommonAnalysis_6_WithSystematicScripts_April1_25/AllWeightAndSystematics_BRfix_Sept28_2025/2016APV/ -o 2016APV/Oct1_2025_preCWR
) > logs/2016APV.log 2>&1 &

# Wait for all background processes to complete
wait
echo "All processes completed."
