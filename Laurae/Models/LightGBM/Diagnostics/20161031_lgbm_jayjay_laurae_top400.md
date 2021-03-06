```r
Fold 1 converged after 132 iterations.
Fold 2 converged after 111 iterations.
Fold 3 converged after 113 iterations.
Fold 4 converged after 100 iterations.
Fold 5 converged after 127 iterations.
Iterations: 116.6 + 12.89574


Fold 1: AUC=0.9110542
Fold 2: AUC=0.9239687
Fold 3: AUC=0.9172964
Fold 4: AUC=0.9203337
Fold 5: AUC=0.9186981
AUC: 0.9182702 + 0.004741662
Average AUC using all data: 0.9054752


Fold 1: MCC=0.474176 (452 [32.87%] positives), threshold=0.462049
Fold 2: MCC=0.4707131 (647 [47.02%] positives), threshold=0.310736
Fold 3: MCC=0.4818133 (629 [45.71%] positives), threshold=0.33405
Fold 4: MCC=0.4685455 (515 [37.43%] positives), threshold=0.392086
Fold 5: MCC=0.4795416 (649 [47.17%] positives), threshold=0.307921
MCC: 0.4749579 + 0.00565146
Positives: 578.4 + 89.78753
Detection Rate: 0.4203966 + 0.06516852
Average MCC on all data (5 fold): 0.4690952, threshold=0.4749579
Average MCC using all data: 0.4719779, threshold=0.354829


Submission overfitted threshold on all MCC positives: 2899

Submission average validated threshold on all MCC positives: 2271

Submission average of overfit+validated threshold positives: 2515

Submission with all data overfitted threshold on all MCC positives: 2954. Threshold=0.354829

Submission with all data average validated threshold on all MCC positives: 2324. Threshold=0.4749579

Submission with all data average of overfit+validated threshold positives: 2575. Threshold=0.4148935

Submission with all data by taking the amount of positives of overfitted threshold on all MCC positives: 2899. Threshold=0.363429

Submission with all data by taking the amount of positives of average validated threshold on all MCC positives: 2271. Threshold=0.489061

Submission with all data by taking the amount of positives of average of overfit+validated threshold positives: 2515. Threshold=0.42985

Submission with all data by taking the sum of positives of validated positives: 2892. Threshold=0.364355

Cross-validated used features list (all used features to copy & paste):

c("sameL0_Number1", "sameL1_Number1", "CATEGORICAL_Last_____1", 
"GF1", "sameL3_Number1", "sameL3", "GF0", "BAC60_Sum_S3", "L1_S24_F1723", 
"FOR60_Sum_S3", "DATE_S33max", "DATE_L3kurt", "FOR30_Sum_S", 
"BAC30_Sum_S", "FOR100_Sum", "BAC100_Sum", "Kurtosis", "FOR165_log_lag", 
"L1_S24_F1632", "FOR100_log_lag_L3", "FOR165_Sum", "BAC100_log_lag_L3", 
"L3_S33_F3857", "Id", "L3_S30_F3754", "L3max_L0min", "BAC100_log_lag", 
"DATE_S32max", "Range", "BAC165_Sum", "L3_S33_F3859", "L0_Max", 
"L3_S30_F3744", "FOR165_log_lag_L3", "L0max_L3max", "L3_L3_Unique_Count", 
"FOR100_log_lag", "BAC165_log_lag", "S33max_S29min", "L1_S24_F1844", 
"BAC165_log_lag_L3", "L3_S30_F3774", "L3_S30_F3759", "L3_S33_F3865", 
"DATE_S34max", "L3_S29_F3351", "L3_S30_F3749", "CATEGORICAL_Last_____2", 
"Response_Minus1", "L3_S30_F3809", "L3_S30_F3804", "L3_S29_F3345", 
"L3_S29_F3373", "L3_S29_F3321", "L3_S29_F3348", "L3_S29_F3324", 
"L3_S30_F3554", "L3_S30_F3704", "L3_S30_F3769", "L3_S29_F3427", 
"L0_Mean", "L3_S30_F3494", "L3_S29_F3379", "L3_S30_F3829", "L0_S0_F20_Mult_L0_S0_F20", 
"L3_S29_F3342", "L0_S1_F28", "S33min_S30min", "L1_S24_F1846", 
"Response_Minus1_Number1", "L0_Min", "L3_S30_F3574", "L3_S36_F3920", 
"sameL0", "L3_S29_F3315", "L3_S29_F3479", "L3_S29_F3333", "L3_S29_F3339", 
"L3_S29_F3354", "BAC60_log_lag_S34", "L3_S29_F3327", "FOR60_log_lag_S34", 
"L3_S30_F3609", "L3_S30_F3544", "L3_S30_F3794", "L3_S29_F3382", 
"L3_S29_F3376", "L3_S29_F3336", "L3_S30_F3604", "L3_S30_F3534", 
"L3_S30_F3784", "L3_S30_F3819", "DATE_S35max", "FOR165_log_lag_L2", 
"L0_S9_F180", "L2_Min", "L3_S29_F3330", "L3_S30_F3639", "L0_S1_F24", 
"L3_S30_F3524", "L3_S30_F3519", "BAC165_log_lag_L1", "DATE_S36max", 
"L3_S29_F3433", "BAC165_log_lag_L2", "L3_S30_F3629", "BAC165_log_lag_L0", 
"BAC60_log_lag_S33", "L3_S29_F3318", "L3_Max", "L0_S0_F18", "L3_S30_F3514", 
"L2max_S37max", "L3_S30_F3504", "DATE_S37max", "DATE_S30max", 
"FOR30_log_lag_S34", "L3_S30_F3624", "L3_S29_F3407", "L0_S10_F244", 
"L3_S30_F3509", "L0_S0_F16", "L3_Range", "L3max_S30max", "L3_S30_F3579", 
"L0_S4_F104", "L3_S30_F3709", "FOR165_log_lag_L1", "L3_S30_F3764", 
"L0_S0_F20_3", "BAC30_log_lag_S33", "S29min_S37min", "Min", "L0_S0_F20", 
"FOR165_LAG3_Missing_Value_Count_ResponseMinus1", "BAC100_log_lag_L1", 
"L3_S29_F3473", "BAC165_LAG2_Missing_Value_Count_ResponseMinus1", 
"L0_S0_F0", "L3_S29_F3436", "L3_S29_F3430", "FOR165_log_lag_L0", 
"L0_S11_F322", "L0_S2_F36", "BAC30_log_lag_S30", "L0_S0_F2", 
"L3_Min", "FOR100_LAG_Missing_Value_Count_ResponseMinus1", "FOR60_log_lag_S33", 
"L3_S30_F3799", "FOR165_LAG_Missing_Value_Count_ResponseMinus1", 
"S30min_S37min", "FOR165_LAG_Count_Mult_ResponseMinus1", "FOR100_LAG_Count_Mult_ResponseMinus1", 
"BAC100_LAG3_Missing_Value_Count_ResponseMinus1", "BAC165_LAG2_Count_Mult_ResponseMinus1", 
"FOR60_log_lag_S30", "BAC165_LAG_Missing_Value_Count_ResponseMinus1", 
"L0_S1_F28_17", "CATEGORICAL_Unique_Count", "FOR165_LAG2_Missing_Value_Count_ResponseMinus1", 
"CATEGORICAL_out_out_L3_S32_F3854_class2", "L0_S2_F60", "BAC165_LAG1_Missing_Value_Count_ResponseMinus1", 
"L3_S29_F3461", "L0_Range", "BAC100_LAG_Missing_Value_Count_ResponseMinus1", 
"FOR165_LAG1_Missing_Value_Count_ResponseMinus1", "FOR100_log_lag_L2", 
"FOR165_LAG3_Count_Mult_ResponseMinus1", "S36max_S29min", "L0_S11_F310", 
"BAC100_LAG_Count_Mult_ResponseMinus1", "BAC100_log_lag_L2", 
"FOR100_LAG2_Count_Mult_ResponseMinus1", "BAC165_LAG3_Missing_Value_Count_ResponseMinus1", 
"BAC30_log_lag_S34", "BAC165_LAG_Count_Mult_ResponseMinus1", 
"L3_S29_F3357", "Mean", "FOR100_LAG2_Missing_Value_Count_ResponseMinus1", 
"FOR100_LAG3_Missing_Value_Count_ResponseMinus1", "FOR165_LAG2_Count_Mult_ResponseMinus1", 
"CATEGORICAL_Missing_Value_Count", "FOR165_LAG1_Count_Mult_ResponseMinus1", 
"BAC165_LAG0_Missing_Value_Count_ResponseMinus1", "L0_S6_F132", 
"DATE_L1kurt", "L2_S26_F3106", "BAC100_LAG2_Missing_Value_Count_ResponseMinus1", 
"L3_S30_F3669", "L0_S2_F44_2", "BAC165_LAG1_Count_Mult_ResponseMinus1", 
"L3_S35_F3896", "L1_Min", "L0_S5_F114", "L3_S30_F3684", "FOR100_LAG3_Count_Mult_ResponseMinus1", 
"FOR100_LAG0_Missing_Value_Count_ResponseMinus1", "BAC165_LAG0_Count_Mult_ResponseMinus1", 
"FOR100_log_lag_L1", "BAC100_LAG1_Missing_Value_Count_ResponseMinus1", 
"L0_S7_F138", "L0_S6_F122", "FOR165_LAG0_Missing_Value_Count_ResponseMinus1", 
"BAC100_LAG2_Count_Mult_ResponseMinus1", "L3_S35_F3889", "L3_S30_F3589", 
"FOR30_log_lag_S33", "BAC60_log_lag_S30", "FOR30_log_lag_S30", 
"L3_S30_F3644", "FOR165_LAG0_Count_Mult_ResponseMinus1", "L0_S5_F116", 
"Unique_Count", "L0_S3_F100", "L0_S2_F44", "L2_S26_F3062", "BAC100_LAG3_Count_Mult_ResponseMinus1", 
"BAC100_LAG0_Count_Mult_ResponseMinus1", "BAC100_LAG1_Count_Mult_ResponseMinus1", 
"CATEGORICAL_out_L3_S32_F3854_class1", "S33min_S37min", "L3_S30_F3689", 
"L0_S3_F96", "BAC100_log_lag_L0", "L2_S26_F3069", "BAC100_LAG0_Missing_Value_Count_ResponseMinus1", 
"FOR100_LAG1_Missing_Value_Count_ResponseMinus1", "DATE_S24max", 
"FOR100_LAG0_Count_Mult_ResponseMinus1", "L3_S29_F3476", "L0_S0_F8", 
"DATE_S6_max", "L0_S13_F354", "L0_S3_F72", "BAC165_LAG3_Count_Mult_ResponseMinus1", 
"S29min_S34min", "L3_S30_F3674", "L3_S30_F3569", "FOR100_LAG1_Count_Mult_ResponseMinus1", 
"L0_S10_F254", "L0_S11_F326", "L0_S21_F497", "FOR100_log_lag_L0", 
"L0_S0_F16_7", "L0_S4_F109", "DATE_S0_max", "DATE_S5_max", "L0_S11_F302", 
"DATE_S38max", "L3_S30_F3584", "S37min_S34min", "L1_Max", "L0_S7_F142", 
"L0_S10_F259", "L3_S30_F3564", "DATE_S4_max", "DATE_S29max", 
"L0_S9_F165", "L1_S24_F1578", "L1_Range", "L0_S10_F224", "L0_S2_F64", 
"L0_S0_F22", "L3max_S34min", "L0_S12_F350", "S29max_S35max", 
"L0_S3_F100_15", "L0_S3_F80", "L2_S27_F3129", "L0_S0_F10", "L0_S13_F356", 
"DATE_S3_max", "L0_S0_F4", "L0_S0_F18_14", "L0_S1_F28_6", "S29min_S32min", 
"L0_S0_F14", "L0_S9_F185", "L0_S11_F286", "L0_S10_F229", "L3_S30_F3634", 
"L0_S9_F170", "L3_S30_F3664", "L0_S0_F6", "L0_S2_F36_6", "L0_S11_F294", 
"L2_S27_F3210", "L0_S23_F643", "L0_S9_F190", "S30min_S35min", 
"L0_S11_F318", "L0_S12_F330", "L2_S26_F3040", "FOR100_LAG_Sum_ResponseMinus1", 
"L0_S9_F155", "L0_S9_F160", "S13min_S33min", "L2_S26_F3117", 
"DATE_S7_max", "sameL2", "L1_S24_F1850", "L0_S1_F24_4", "L0_S7_F138_23", 
"L0_S0_F2_11", "DATE_S24min", "L0_S12_F346", "L0_S12_F332", "L0_S12_F348", 
"L1_S24_F1516", "L0_S11_F306", "L1_S24_F1667", "L2_S26_F3121", 
"L0_S11_F290", "L0_S10_F219", "L0_S9_F155_4", "L0_S0_F0_14", 
"L0_S17_F433", "L0_S0_F8_23", "L0_S6_F132_9", "L2_S26_F3036", 
"L0_S10_F249", "L2_S26_F3113", "L0_S0_F16_3", "L0_S11_F282", 
"L1_S24_F1758", "L3_S30_F3679", "L3_Unique_Count", "DATE_S2_max", 
"L3_S32_F3850", "L2_S26_F3073", "L2_S27_F3199", "L0_S23_F667", 
"L0_S6_F122_6", "L0_S11_F314", "L0_S1_F24_16", "L0_S9_F170_15", 
"L0_S0_F12", "L0_S11_F314_Mult_L0_S0_F20", "DATE_S8_max", "L0_S5_F116_14", 
"L1_S24_F1494", "L0_S0_F0_11", "L3_S41_F4008", "L3_S38_F3960", 
"DATE_S16max", "DATE_S18max", "L0_S9_F195", "L3_S33_F3855", "S35min_L1min", 
"L0_S0_F18_5", "DATE_S11max", "L0_Unique_Count", "L3max_S26max", 
"L0_S14_F370", "DATE_S10max", "L0_S18_F439", "S33min_S36min", 
"L3_S29_F3360", "L0_S0_F14_8", "L0_S11_F314_Mult_L0_S11_F314", 
"L2_S27_F3214", "L2_S27_F3162", "sameL1", "DATE_S13max", "L2_S26_F3051", 
"L3_L3_Missing_Value_Count", "L0_S0_F0_13", "L0_S14_F386", "L0_S7_F142_3", 
"L0_S0_F22_3", "L1_S24_F1662", "DATE_S26max", "L0_S10_F234", 
"L1_S24_F1520", "L2_S27_F3155", "L2_S27_F3133", "L0_S3_F96_6", 
"L1_S24_F1672", "S26max_S32max", "L3_S35_F3894", "L1_S24_F1514", 
"L0_S16_F426", "DATE_S1_max", "L0_S1_F24_13", "L0_S10_F264", 
"L0_S8_F144", "L0_S23_F639", "L0_S1_F28_9", "L0_S0_F6_16", "L1_S24_F1463", 
"L0_S16_F421", "L0_S0_F6_40", "L0_S1_F24_17", "L1_S24_F1783", 
"L0_S2_F48", "L3_S36_F3918", "L0_S5_F114_9", "L2_S26_F3047", 
"L1_S24_F1788", "L2_S27_F3206", "L1_S24_F1773", "L0_S22_F591", 
"L0_S21_F522", "L0_S9_F200", "DATE_S19max", "DATE_S14max", "L0_S0_F2_16", 
"L0_S21_F532", "L0_S3_F84", "L0_S0_F0_9", "S33min_S35min", "L2_S27_F3144", 
"L2_Max", "L0_S9_F165_7", "L1_S24_F1565", "L1_S24_F1581", "L0_S15_F415", 
"L0_S9_F210", "L1_S24_F1831", "L0_S22_F571", "DATE_S17max", "L0_S5_F114_4", 
"DATE_S27max", "L0_S10_F239", "L0_S0_F10_9", "DATE_S21max", "S34min_S35min", 
"L0_S22_F576", "L0_S12_F336", "L0_S19_F459", "L0_S14_F362", "L0_S15_F397", 
"L0_S21_F482", "L0_S3_F84_5", "L0_S9_F155_11", "DATE_S22max", 
"L0_S12_F334", "L0_S5_F116_10", "L0_S0_F10_13", "L0_S0_F4_16", 
"L0_S3_F96_2", "L0_S7_F142_8", "L0_S14_F390", "L1_S25_F2161", 
"L3_S41_F4011", "L0_S17_F431", "L3_S29_F3482", "L1_S24_F1637", 
"L2_S27_F3140", "L0_S6_F132_6", "L1_S24_F1778", "L0_S3_F80_11", 
"L3_S41_F4026", "L1_S24_F1518", "L2_S27_F3166", "DATE_S9_max", 
"L0_S12_F344", "L1_S24_F1700", "L1_S24_F1824", "L0_S2_F36_4", 
"L0_S3_F72_8", "L1_S24_F1842", "L0_S14_F374", "S26min_S24min", 
"L0_S23_F671", "L0_S15_F406", "L3_S48_F4198", "DATE_S15max", 
"L0_S22_F606", "L0_S15_F418", "L0_S0_F8_20", "L0_S3_F80_8", "L0_S19_F455", 
"L0_S3_F100_7", "L0_S23_F659", "L1_S24_F1848", "L0_S15_F403", 
"L0_S2_F64_7", "L3_S47_F4153", "L0_S0_F18_13", "S26min_S37min", 
"L1_S24_F1544", "L3_S45_F4124", "L0_S4_F109_4", "L0_S0_F2_9", 
"L0_S2_F48_5", "L0_S21_F502", "L1_S24_F1573", "L0_S18_F449", 
"L0_S10_F274", "L0_S0_F2_14", "L1_S25_F2116", "L0_S3_F80_3", 
"L0_S0_F20_2", "S27min_S32min", "L3_S47_F4163", "L0_S12_F342", 
"L0_S12_F338", "L0_S0_F10_17", "L0_S0_F18_10", "L1_S25_F1958", 
"L0_S2_F64_2", "L1_S24_F1685", "L0_S2_F36_8", "L0_S7_F142_5", 
"L1_S24_F1575", "L3_S41_F4004", "DATE_S23max", "L0_S3_F100_11", 
"L0_S0_F16_6", "L1_S24_F1652", "L0_S3_F100_5", "L0_S1_F28_14", 
"L0_S0_F2_15", "L0_S22_F556", "L0_S0_F10_12", "L0_S0_F8_21", 
"L0_S5_F116_7", "L0_S6_F132_8", "L0_S0_F10_10", "L1_L1_Missing_Value_Count", 
"L0_S0_F8_25", "L1_S24_F1798", "L0_S12_F340", "L0_S23_F619", 
"L0_S23_F655", "L0_S6_F122_9", "L0_S0_F2_3", "L1_S24_F1812", 
"L0_S0_F0_4", "L3_S41_F4014", "L0_S12_F352", "L0_S6_F122_17", 
"L0_S0_F12_9", "L0_S1_F24_9", "S33min_S34min", "L0_S21_F507", 
"DATE_S25max", "DATE_S20max", "L0_S8_F144_2", "L0_S9_F175", "L0_S0_F18_2", 
"L1_S24_F1567", "L1_S24_F1829", "L1_S25_F2176", "L0_S23_F623", 
"L0_S4_F104_11", "L1_S25_F2136", "L3_S41_F4020", "L0_S9_F160_30", 
"L0_S6_F122_4", "BAC165_LAG_Sum_ResponseMinus1", "L0_S2_F48_4", 
"L0_S7_F138_3", "L0_S3_F100_14", "L0_S21_F517", "L0_S22_F596", 
"L0_S0_F2_6", "L1_S24_F1571", "L0_S1_F28_18", "L1_S24_F1718", 
"L0_S2_F56", "L0_S23_F651", "L0_S21_F512", "L0_S23_F631", "L0_S0_F12_8", 
"L0_S22_F546", "L0_S22_F551", "L0_S21_F537", "L0_S22_F586", "L1_S24_F1808", 
"L1_S25_F2158", "L0_S0_F6_33", "L1_S25_F2131", "L3_S41_F4006", 
"L0_S22_F601", "L1_S24_F983", "L0_S2_F64_12", "L0_S21_F477", 
"L0_S9_F160_23", "L3_S43_F4090", "L0_S0_F12_6", "L1_S24_F1539", 
"L0_S0_F8_24", "L0_S3_F96_4", "L0_S3_F80_6", "L1_S24_F1599", 
"DATE_S25min", "L0_S21_F487", "L0_S0_F6_4", "L3_S40_F3984", "DATE_S44max", 
"L0_S2_F32", "L1_S24_F1512", "L1_S24_F1122", "L1_S24_F1609", 
"L0_S1_F24_12", "L3_S48_F4196", "L0_S6_F132_4", "L0_S21_F472", 
"L0_S2_F64_5", "L1_S25_F2111", "L0_S4_F104_7", "L0_S3_F72_3", 
"L1_S25_F2170", "L3_S38_F3956", "L0_S5_F114_14", "L1_S24_F1738", 
"L1_S24_F1753", "L1_Unique_Count", "L1_S24_F1822", "L1_S24_F1748", 
"L1_S25_F1973", "L3_S40_F3986", "L1_S25_F2106", "L0_S9_F170_19", 
"L0_S21_F527", "S32min_S30min", "L0_S0_F10_3", "L0_S4_F104_21", 
"L3_S47_F4158", "L0_S3_F72_6", "L0_S0_F10_14", "L1_S24_F1713", 
"L0_S9_F170_24", "L0_S0_F14_37", "L0_S0_F0_7", "L3_S47_F4138", 
"L0_S20_F461", "L0_S2_F40", "L1_S24_F1728", "L0_S9_F160_18", 
"L1_S25_F2101", "L0_S0_F4_22", "DATE_S12max", "L1_S24_F1647", 
"L1_S25_F1892", "L1_S24_F1820", "L0_S6_F132_3", "L0_S6_F122_13", 
"L1_S24_F1818", "L0_S0_F8_11", "L0_S0_F18_12", "L0_S2_F40_17", 
"L1_S24_F1814", "L1_S25_F2056", "DATE_S43max", "DATE_S40max", 
"L0_S6_F122_14", "L1_S24_F1733", "BAC165_LAG1_Sum_ResponseMinus1", 
"L0_S0_F12_15", "L3_S40_F3980", "L0_S4_F104_12", "L1_S25_F1938", 
"L0_S2_F40_15", "L0_S3_F76", "L0_S4_F109_16", "L0_S2_F32_17", 
"L1_S24_F1743", "L0_S5_F116_3", "L3_S36_F3938", "L0_S5_F114_15", 
"L0_S9_F165_4", "L0_S15_F400", "L3_S41_F4023", "L0_S0_F18_15", 
"L0_S5_F116_15", "L0_S3_F92", "L1_S25_F2173", "L0_S0_F14_15", 
"L3_S41_F4000", "BAC165_LAG0_Sum_ResponseMinus1", "L1_S24_F829", 
"L0_S0_F14_6", "L0_S7_F142_16", "L1_S25_F1978", "L0_S0_F6_22", 
"L1_S24_F1810", "L0_S7_F138_22", "FOR165_LAG3_Sum_ResponseMinus1", 
"S32max_S37min", "L0_S9_F155_9", "L1_S24_F1763", "CATEGORICAL_Max______3", 
"L0_S21_F492", "L1_S25_F1992", "L1_S24_F1498", "L0_S23_F627", 
"L0_S4_F104_17", "L0_S0_F14_9", "FOR100_LAG3_Sum_ResponseMinus1", 
"L0_S4_F104_19", "L3_S40_F3982", "L0_S9_F170_16", "L1_S25_F2091", 
"BAC165_LAG3_Sum_ResponseMinus1", "L0_S22_F561", "L0_S2_F44_3", 
"L0_S6_F122_12", "L0_S0_F0_15", "L0_S3_F76_11", "L0_S0_F4_4", 
"L0_S3_F68", "L3_S44_F4118", "FOR165_LAG2_Sum_ResponseMinus1", 
"L1_S25_F2147", "L0_S9_F170_5", "BAC100_LAG_Sum_ResponseMinus1", 
"L1_S24_F1642", "L0_S23_F663", "FOR165_LAG_Sum_ResponseMinus1", 
"L0_S9_F155_10", "L1_S24_F1622", "L0_S0_F10_16", "L3_S30_F3649", 
"BAC100_LAG1_Sum_ResponseMinus1", "DATE_S48max", "L3_S49_F4211", 
"L0_S9_F160_11", "L0_S0_F4_40", "L0_S0_F14_29", "L0_S2_F40_8", 
"L0_S0_F4_33", "L1_S24_F1836", "L0_S6_F118", "L3_S38_F3952", 
"DATE_S45min", "BAC100_LAG3_Sum_ResponseMinus1", "L0_S0_F14_43", 
"L0_S22_F611", "L0_S7_F138_17", "L0_S9_F160_7", "BAC100_LAG0_Sum_ResponseMinus1", 
"L0_S9_F155_6", "L0_S9_F160_3", "L0_S6_F118_12", "L0_S3_F84_4", 
"L1_S24_F1490", "L1_S25_F1869", "L1_S24_F1816", "L3_S47_F4143", 
"BAC165_LAG2_Sum_ResponseMinus1", "L0_S0_F12_35", "L1_S25_F2144", 
"L1_S24_F1793", "L0_S1_F28_15", "L3_S30_F3499", "L0_S0_F12_42", 
"L1_S24_F1768", "L0_S14_F366", "L1_S25_F1858", "L0_S0_F12_43", 
"L1_S24_F1006", "L0_S2_F56_10", "L3_S43_F4085", "L0_S0_F4_6", 
"L1_S25_F2164", "DATE_S50max", "FOR100_LAG0_Sum_ResponseMinus1", 
"L0_S0_F6_25", "L0_S4_F104_8", "L0_S7_F136_-1", "L0_S0_F6_37", 
"L1_S24_F1166", "L3_S47_F4148", "L0_S2_F56_7", "FOR100_LAG2_Sum_ResponseMinus1", 
"L0_S3_F92_8", "L0_S1_F24_14", "L1_S24_F1657", "L1_S25_F2126", 
"L1_S24_F1594", "L1_S25_F1900", "L1_S24_F1627", "L1_S25_F2051", 
"L1_S24_F1803", "DATE_S41max", "L1_S24_F948", "L1_S25_F2155", 
"L3_S44_F4115", "S32min_S10min", "L0_S7_F136_3", "L3_S43_F4095", 
"sameL2_Number1", "FOR165_LAG0_Sum_ResponseMinus1", "L1_S24_F988", 
"L1_S24_F1690", "S32max_S25min", "L0_S3_F100_17", "L0_S0_F4_36", 
"L0_S2_F56_11", "L3_S43_F4080", "L0_S1_F28_16", "L3_S41_F4016", 
"L0_S7_F138_4", "DATE_S47max", "L1_S25_F1855", "L0_S7_F142_14", 
"L0_S0_F12_20", "L1_S24_F1202", "L0_S8_F144_13", "L0_S7_F136", 
"L1_S24_F1834", "L0_S4_F109_29", "L3_S30_F3734", "L0_S3_F92_13", 
"L0_S3_F80_10", "L0_S0_F2_17", "DATE_S28max", "L0_S0_F6_36", 
"L1_S24_F814", "L0_S4_F104_20", "L0_S9_F160_15", "L3_S44_F4112", 
"L0_S0_F14_41", "L0_S9_F170_8", "L0_S9_F160_9", "L0_S4_F109_5", 
"L1_S24_F1506", "L1_S24_F1180", "DATE_S51max", "L0_S0_F4_8", 
"L0_S1_F28_13", "L1_S25_F2061", "L1_S25_F1968", "L0_S0_F4_25", 
"L0_S4_F104_5", "L1_S25_F2081", "L0_S8_F144_11", "L0_S9_F160_21", 
"FOR165_LAG1_Sum_ResponseMinus1", "L0_S3_F68_3", "L0_S0_F12_32", 
"L0_S4_F104_-1", "L1_S25_F2152", "L0_S3_F68_13", "L0_S2_F64_11", 
"L3_S50_F4243", "L1_S24_F958", "L1_S24_F1041", "L0_S0_F6_8", 
"L0_S0_F22_2", "L1_S24_F963", "CATEGORICAL_Max______1", "L1_S25_F1909", 
"S25max_S32min", "L1_S24_F1838", "L0_S5_F116_4", "L0_S7_F138_15", 
"L3_S44_F4121", "L1_S24_F1391", "DATE_S49max", "L0_S10_F269", 
"L3_S37_F3950", "L1_S24_F1056", "L2_S26_F3077", "L3_S34_F3882", 
"L1_S24_F1002", "L0_S7_F136_6", "L0_S0_F14_42", "L0_S4_F109_27", 
"L1_S24_F1482", "L0_S6_F118_-1", "L0_S5_F114_8", "L0_S0_F4_38", 
"L0_S3_F92_3", "L0_S3_F76_5", "L0_S0_F14_33", "Max", "L0_S9_F155_7", 
"L0_S3_F72_4", "L1_S24_F1303", "L0_S8_F144_12", "L2_L2_Unique_Count", 
"L0_S3_F76_10", "L0_S0_F6_28", "L0_S0_F4_12", "L0_S3_F68_12", 
"L1_S25_F1963", "L0_S0_F4_15", "L0_S9_F165_3", "L0_S0_F12_40", 
"L0_S0_F14_2", "L1_S24_F700", "L0_S9_F170_10", "L0_S2_F40_14", 
"L0_S0_F12_25", "L0_S3_F92_15", "L0_S0_F8_12", "L0_S3_F80_7", 
"L0_S4_F109_28", "L0_S2_F64_8", "L1_S25_F2086", "L0_S0_F12_12", 
"L0_S3_F96_7", "L1_S24_F1240", "L0_S3_F72_9", "L0_S9_F155_-1", 
"L0_S0_F14_40", "L0_S8_F144_6", "L1_S25_F2167", "DATE_S39max", 
"L2_S28_F3248", "L0_S5_F114_-1", "L0_S7_F138_21", "L2_S26_F3125", 
"L0_S7_F138_14", "L0_S0_F6_15", "BAC100_LAG2_Sum_ResponseMinus1", 
"L0_S3_F76_4", "L0_S3_F68_-1", "L1_S24_F1366", "L0_S0_F6_38", 
"L1_S25_F2797", "L0_S0_F4_37", "L1_S25_F2016", "L3_S29_F3488", 
"L0_S7_F138_20", "L1_S24_F1245", "FOR100_LAG1_Sum_ResponseMinus1", 
"L0_S0_F14_32", "L1_S24_F733", "L0_S2_F32_15", "L0_S6_F118_10", 
"L0_S2_F40_9", "L0_S2_F32_7", "L1_S24_F1000", "L0_S5_F114_12", 
"L0_S9_F170_20", "L0_S0_F4_29", "L1_S25_F2071", "L0_S1_F28_4", 
"L0_S0_F8_5", "L0_S3_F100_13", "L1_S25_F2031", "L0_S0_F14_34", 
"L0_S0_F6_6", "DATE_S31max", "L0_S2_F56_6", "L1_S24_F683", "L0_S6_F118_13", 
"L1_S24_F691", "L0_S4_F109_25", "L0_S0_F0_-1", "L0_S0_F8_15", 
"L1_S24_F810", "L0_S1_F24_3", "L0_S9_F160_24", "L1_S25_F1953", 
"L0_S7_F136_9", "L0_S7_F136_11", "L0_S0_F14_26", "L0_S7_F138_9", 
"L0_S0_F4_39", "L0_S0_F12_39", "L0_S0_F18_6", "L1_S25_F1919", 
"L1_S24_F1336", "L1_S24_F1293", "L1_S24_F1321", "L0_S4_F104_15", 
"L0_S7_F142_9", "L0_S0_F6_20", "L1_S24_F1172", "L0_S0_F6_12", 
"L2_S28_F3307", "L0_S6_F122_8", "L1_S25_F2837", "L0_S7_F136_14", 
"L0_S2_F56_8", "L0_S7_F138_13", "L1_S24_F1331", "L0_S1_F24_-1", 
"L0_S2_F32_-1", "L0_S0_F16_4", "L0_S7_F138_16", "L0_S5_F116_13", 
"L0_S7_F136_16")


Cross-validated multipresence used features list (all used features to copy & paste):

c("sameL0_Number1", "sameL1_Number1", "CATEGORICAL_Last_____1", 
"GF1", "sameL3_Number1", "sameL3", "GF0", "BAC60_Sum_S3", "L1_S24_F1723", 
"FOR60_Sum_S3", "DATE_S33max", "DATE_L3kurt", "FOR30_Sum_S", 
"BAC30_Sum_S", "FOR100_Sum", "BAC100_Sum", "Kurtosis", "FOR165_log_lag", 
"L1_S24_F1632", "FOR100_log_lag_L3", "FOR165_Sum", "BAC100_log_lag_L3", 
"L3_S33_F3857", "Id", "L3_S30_F3754", "L3max_L0min", "BAC100_log_lag", 
"DATE_S32max", "Range", "BAC165_Sum", "L3_S33_F3859", "L0_Max", 
"L3_S30_F3744", "FOR165_log_lag_L3", "L0max_L3max", "L3_L3_Unique_Count", 
"FOR100_log_lag", "BAC165_log_lag", "S33max_S29min", "L1_S24_F1844", 
"BAC165_log_lag_L3", "L3_S30_F3774", "L3_S30_F3759", "L3_S33_F3865", 
"DATE_S34max", "L3_S29_F3351", "L3_S30_F3749", "CATEGORICAL_Last_____2", 
"Response_Minus1", "L3_S30_F3809", "L3_S30_F3804", "L3_S29_F3345", 
"L3_S29_F3373", "L3_S29_F3321", "L3_S29_F3348", "L3_S29_F3324", 
"L3_S30_F3554", "L3_S30_F3704", "L3_S30_F3769", "L3_S29_F3427", 
"L0_Mean", "L3_S30_F3494", "L3_S29_F3379", "L3_S30_F3829", "L0_S0_F20_Mult_L0_S0_F20", 
"L3_S29_F3342", "L0_S1_F28", "S33min_S30min", "L1_S24_F1846", 
"Response_Minus1_Number1", "L0_Min", "L3_S30_F3574", "L3_S36_F3920", 
"sameL0", "L3_S29_F3315", "L3_S29_F3479", "L3_S29_F3333", "L3_S29_F3339", 
"L3_S29_F3354", "BAC60_log_lag_S34", "L3_S29_F3327", "FOR60_log_lag_S34", 
"L3_S30_F3609", "L3_S30_F3544", "L3_S30_F3794", "L3_S29_F3382", 
"L3_S29_F3376", "L3_S29_F3336", "L3_S30_F3604", "L3_S30_F3534", 
"L3_S30_F3784", "L3_S30_F3819", "DATE_S35max", "FOR165_log_lag_L2", 
"L0_S9_F180", "L2_Min", "L3_S29_F3330", "L3_S30_F3639", "L0_S1_F24", 
"L3_S30_F3524", "L3_S30_F3519", "BAC165_log_lag_L1", "DATE_S36max", 
"L3_S29_F3433", "BAC165_log_lag_L2", "L3_S30_F3629", "BAC165_log_lag_L0", 
"BAC60_log_lag_S33", "L3_S29_F3318", "L3_Max", "L0_S0_F18", "L3_S30_F3514", 
"L2max_S37max", "L3_S30_F3504", "DATE_S37max", "DATE_S30max", 
"FOR30_log_lag_S34", "L3_S30_F3624", "L3_S29_F3407", "L0_S10_F244", 
"L3_S30_F3509", "L0_S0_F16", "L3_Range", "L3max_S30max", "L3_S30_F3579", 
"L0_S4_F104", "L3_S30_F3709", "FOR165_log_lag_L1", "L3_S30_F3764", 
"L0_S0_F20_3", "BAC30_log_lag_S33", "S29min_S37min", "Min", "L0_S0_F20", 
"FOR165_LAG3_Missing_Value_Count_ResponseMinus1", "BAC100_log_lag_L1", 
"L3_S29_F3473", "BAC165_LAG2_Missing_Value_Count_ResponseMinus1", 
"L0_S0_F0", "L3_S29_F3436", "L3_S29_F3430", "FOR165_log_lag_L0", 
"L0_S11_F322", "L0_S2_F36", "BAC30_log_lag_S30", "L0_S0_F2", 
"L3_Min", "FOR100_LAG_Missing_Value_Count_ResponseMinus1", "FOR60_log_lag_S33", 
"L3_S30_F3799", "FOR165_LAG_Missing_Value_Count_ResponseMinus1", 
"S30min_S37min", "FOR165_LAG_Count_Mult_ResponseMinus1", "FOR100_LAG_Count_Mult_ResponseMinus1", 
"BAC100_LAG3_Missing_Value_Count_ResponseMinus1", "BAC165_LAG2_Count_Mult_ResponseMinus1", 
"FOR60_log_lag_S30", "BAC165_LAG_Missing_Value_Count_ResponseMinus1", 
"L0_S1_F28_17", "CATEGORICAL_Unique_Count", "FOR165_LAG2_Missing_Value_Count_ResponseMinus1", 
"CATEGORICAL_out_out_L3_S32_F3854_class2", "L0_S2_F60", "BAC165_LAG1_Missing_Value_Count_ResponseMinus1", 
"L3_S29_F3461", "L0_Range", "BAC100_LAG_Missing_Value_Count_ResponseMinus1", 
"FOR165_LAG1_Missing_Value_Count_ResponseMinus1", "FOR100_log_lag_L2", 
"FOR165_LAG3_Count_Mult_ResponseMinus1", "S36max_S29min", "L0_S11_F310", 
"BAC100_LAG_Count_Mult_ResponseMinus1", "BAC100_log_lag_L2", 
"FOR100_LAG2_Count_Mult_ResponseMinus1", "BAC165_LAG3_Missing_Value_Count_ResponseMinus1", 
"BAC30_log_lag_S34", "BAC165_LAG_Count_Mult_ResponseMinus1", 
"L3_S29_F3357", "Mean", "FOR100_LAG2_Missing_Value_Count_ResponseMinus1", 
"FOR100_LAG3_Missing_Value_Count_ResponseMinus1", "FOR165_LAG2_Count_Mult_ResponseMinus1", 
"CATEGORICAL_Missing_Value_Count", "FOR165_LAG1_Count_Mult_ResponseMinus1", 
"BAC165_LAG0_Missing_Value_Count_ResponseMinus1", "L0_S6_F132", 
"DATE_L1kurt", "L2_S26_F3106", "BAC100_LAG2_Missing_Value_Count_ResponseMinus1", 
"L3_S30_F3669", "L0_S2_F44_2", "BAC165_LAG1_Count_Mult_ResponseMinus1", 
"L3_S35_F3896", "L1_Min", "L0_S5_F114", "L3_S30_F3684", "FOR100_LAG3_Count_Mult_ResponseMinus1", 
"FOR100_LAG0_Missing_Value_Count_ResponseMinus1", "BAC165_LAG0_Count_Mult_ResponseMinus1", 
"FOR100_log_lag_L1", "BAC100_LAG1_Missing_Value_Count_ResponseMinus1", 
"L0_S7_F138", "L0_S6_F122", "FOR165_LAG0_Missing_Value_Count_ResponseMinus1", 
"BAC100_LAG2_Count_Mult_ResponseMinus1", "L3_S35_F3889", "L3_S30_F3589", 
"FOR30_log_lag_S33", "BAC60_log_lag_S30", "FOR30_log_lag_S30", 
"L3_S30_F3644", "FOR165_LAG0_Count_Mult_ResponseMinus1", "L0_S5_F116", 
"Unique_Count", "L0_S3_F100", "L0_S2_F44", "L2_S26_F3062", "BAC100_LAG3_Count_Mult_ResponseMinus1", 
"BAC100_LAG0_Count_Mult_ResponseMinus1", "BAC100_LAG1_Count_Mult_ResponseMinus1", 
"CATEGORICAL_out_L3_S32_F3854_class1", "S33min_S37min", "L3_S30_F3689", 
"L0_S3_F96", "BAC100_log_lag_L0", "L2_S26_F3069", "BAC100_LAG0_Missing_Value_Count_ResponseMinus1", 
"FOR100_LAG1_Missing_Value_Count_ResponseMinus1", "DATE_S24max", 
"FOR100_LAG0_Count_Mult_ResponseMinus1", "L3_S29_F3476", "L0_S0_F8", 
"DATE_S6_max", "L0_S13_F354", "L0_S3_F72", "BAC165_LAG3_Count_Mult_ResponseMinus1", 
"S29min_S34min", "L3_S30_F3674", "L3_S30_F3569", "FOR100_LAG1_Count_Mult_ResponseMinus1", 
"L0_S10_F254", "L0_S11_F326", "L0_S21_F497", "FOR100_log_lag_L0", 
"L0_S0_F16_7", "L0_S4_F109", "DATE_S0_max", "DATE_S5_max", "L0_S11_F302", 
"DATE_S38max", "L3_S30_F3584", "S37min_S34min", "L1_Max", "L0_S7_F142", 
"L0_S10_F259", "L3_S30_F3564", "DATE_S4_max", "DATE_S29max", 
"L0_S9_F165", "L1_S24_F1578", "L1_Range", "L0_S10_F224", "L0_S2_F64", 
"L0_S0_F22", "L3max_S34min", "L0_S12_F350", "S29max_S35max", 
"L0_S3_F100_15", "L0_S3_F80", "L2_S27_F3129", "L0_S0_F10", "L0_S13_F356", 
"DATE_S3_max", "L0_S0_F4", "L0_S0_F18_14", "L0_S1_F28_6", "S29min_S32min", 
"L0_S0_F14", "L0_S9_F185", "L0_S11_F286", "L0_S10_F229", "L3_S30_F3634", 
"L0_S9_F170", "L3_S30_F3664", "L0_S0_F6", "L0_S2_F36_6", "L0_S11_F294", 
"L2_S27_F3210", "L0_S23_F643", "L0_S9_F190", "S30min_S35min", 
"L0_S11_F318", "L0_S12_F330", "L2_S26_F3040", "FOR100_LAG_Sum_ResponseMinus1", 
"L0_S9_F155", "L0_S9_F160", "S13min_S33min", "L2_S26_F3117", 
"DATE_S7_max", "sameL2", "L1_S24_F1850", "L0_S1_F24_4", "L0_S7_F138_23", 
"L0_S0_F2_11", "DATE_S24min", "L0_S12_F346", "L0_S12_F332", "L0_S12_F348", 
"L1_S24_F1516", "L0_S11_F306", "L1_S24_F1667", "L2_S26_F3121", 
"L0_S11_F290", "L0_S10_F219", "L0_S9_F155_4", "L0_S0_F0_14", 
"L0_S17_F433", "L0_S0_F8_23", "L0_S6_F132_9", "L2_S26_F3036", 
"L0_S10_F249", "L2_S26_F3113", "L0_S0_F16_3", "L0_S11_F282", 
"L1_S24_F1758", "L3_S30_F3679", "L3_Unique_Count", "DATE_S2_max", 
"L3_S32_F3850", "L2_S26_F3073", "L2_S27_F3199", "L0_S23_F667", 
"L0_S6_F122_6", "L0_S11_F314", "L0_S1_F24_16", "L0_S9_F170_15", 
"L0_S0_F12", "L0_S11_F314_Mult_L0_S0_F20", "DATE_S8_max", "L0_S5_F116_14", 
"L1_S24_F1494", "L0_S0_F0_11", "L3_S41_F4008", "L3_S38_F3960", 
"DATE_S16max", "DATE_S18max", "L0_S9_F195", "L3_S33_F3855", "S35min_L1min", 
"L0_S0_F18_5", "DATE_S11max", "L0_Unique_Count", "L3max_S26max", 
"L0_S14_F370", "DATE_S10max", "L0_S18_F439", "S33min_S36min", 
"L3_S29_F3360", "L0_S0_F14_8", "L0_S11_F314_Mult_L0_S11_F314", 
"L2_S27_F3214", "L2_S27_F3162", "sameL1", "DATE_S13max", "L2_S26_F3051", 
"L3_L3_Missing_Value_Count", "L0_S0_F0_13", "L0_S14_F386", "L0_S7_F142_3", 
"L0_S0_F22_3", "L1_S24_F1662", "DATE_S26max", "L0_S10_F234", 
"L1_S24_F1520", "L2_S27_F3155", "L2_S27_F3133", "L0_S3_F96_6", 
"L1_S24_F1672", "S26max_S32max", "L3_S35_F3894", "L1_S24_F1514", 
"L0_S16_F426", "DATE_S1_max", "L0_S1_F24_13", "L0_S10_F264", 
"L0_S8_F144", "L0_S23_F639", "L0_S1_F28_9", "L0_S0_F6_16", "L1_S24_F1463", 
"L0_S16_F421", "L0_S0_F6_40", "L0_S1_F24_17", "L1_S24_F1783", 
"L0_S2_F48", "L3_S36_F3918", "L0_S5_F114_9", "L2_S26_F3047", 
"L1_S24_F1788", "L2_S27_F3206", "L1_S24_F1773", "L0_S22_F591", 
"L0_S21_F522", "L0_S9_F200", "DATE_S19max", "DATE_S14max", "L0_S0_F2_16", 
"L0_S21_F532", "L0_S3_F84", "L0_S0_F0_9", "S33min_S35min", "L2_S27_F3144", 
"L2_Max", "L0_S9_F165_7", "L1_S24_F1565", "L1_S24_F1581", "L0_S15_F415", 
"L0_S9_F210", "L1_S24_F1831", "L0_S22_F571", "DATE_S17max", "L0_S5_F114_4", 
"DATE_S27max", "L0_S10_F239", "L0_S0_F10_9", "DATE_S21max", "S34min_S35min", 
"L0_S22_F576", "L0_S12_F336", "L0_S19_F459", "L0_S14_F362", "L0_S15_F397", 
"L0_S21_F482", "L0_S3_F84_5", "L0_S9_F155_11", "DATE_S22max", 
"L0_S12_F334", "L0_S5_F116_10", "L0_S0_F10_13", "L0_S0_F4_16", 
"L0_S3_F96_2", "L0_S7_F142_8", "L0_S14_F390", "L1_S25_F2161", 
"L3_S41_F4011", "L0_S17_F431", "L3_S29_F3482", "L1_S24_F1637", 
"L2_S27_F3140", "L0_S6_F132_6", "L1_S24_F1778", "L0_S3_F80_11", 
"L3_S41_F4026", "L1_S24_F1518", "L2_S27_F3166", "DATE_S9_max", 
"L0_S12_F344", "L1_S24_F1700", "L1_S24_F1824", "L0_S2_F36_4", 
"L0_S3_F72_8", "L1_S24_F1842", "L0_S14_F374", "S26min_S24min", 
"L0_S23_F671", "L0_S15_F406", "L3_S48_F4198", "DATE_S15max", 
"L0_S22_F606", "L0_S15_F418", "L0_S0_F8_20", "L0_S3_F80_8", "L0_S19_F455", 
"L0_S3_F100_7", "L0_S23_F659", "L1_S24_F1848", "L0_S15_F403", 
"L0_S2_F64_7", "L3_S47_F4153", "L0_S0_F18_13", "S26min_S37min", 
"L1_S24_F1544", "L3_S45_F4124", "L0_S4_F109_4", "L0_S0_F2_9", 
"L0_S2_F48_5", "L0_S21_F502", "L1_S24_F1573", "L0_S18_F449", 
"L0_S10_F274", "L0_S0_F2_14", "L1_S25_F2116", "L0_S3_F80_3", 
"L0_S0_F20_2", "S27min_S32min", "L3_S47_F4163", "L0_S12_F342", 
"L0_S12_F338", "L0_S0_F10_17", "L0_S0_F18_10", "L1_S25_F1958", 
"L0_S2_F64_2", "L1_S24_F1685", "L0_S2_F36_8", "L0_S7_F142_5", 
"L1_S24_F1575", "L3_S41_F4004", "DATE_S23max", "L0_S3_F100_11", 
"L0_S0_F16_6", "L1_S24_F1652", "L0_S3_F100_5", "L0_S1_F28_14", 
"L0_S0_F2_15", "L0_S22_F556", "L0_S0_F10_12", "L0_S0_F8_21", 
"L0_S5_F116_7", "L0_S6_F132_8", "L0_S0_F10_10", "L1_L1_Missing_Value_Count", 
"L0_S0_F8_25", "L1_S24_F1798", "L0_S12_F340", "L0_S23_F619", 
"L0_S23_F655", "L0_S6_F122_9", "L0_S0_F2_3", "L1_S24_F1812", 
"L0_S0_F0_4", "L3_S41_F4014", "L0_S12_F352", "L0_S6_F122_17", 
"L0_S0_F12_9", "L0_S1_F24_9", "S33min_S34min", "L0_S21_F507", 
"DATE_S25max", "DATE_S20max", "L0_S8_F144_2", "L0_S9_F175", "L0_S0_F18_2", 
"L1_S24_F1567", "L1_S24_F1829", "L1_S25_F2176", "L0_S23_F623", 
"L0_S4_F104_11", "L1_S25_F2136", "L3_S41_F4020", "L0_S9_F160_30", 
"L0_S6_F122_4", "BAC165_LAG_Sum_ResponseMinus1", "L0_S2_F48_4", 
"L0_S7_F138_3", "L0_S3_F100_14", "L0_S21_F517", "L0_S22_F596", 
"L0_S0_F2_6", "L1_S24_F1571", "L0_S1_F28_18", "L1_S24_F1718", 
"L0_S2_F56", "L0_S23_F651", "L0_S21_F512", "L0_S23_F631", "L0_S0_F12_8", 
"L0_S22_F546", "L0_S22_F551", "L0_S21_F537", "L0_S22_F586", "L1_S24_F1808", 
"L1_S25_F2158", "L0_S0_F6_33", "L1_S25_F2131", "L3_S41_F4006", 
"L0_S22_F601", "L1_S24_F983", "L0_S2_F64_12", "L0_S21_F477", 
"L0_S9_F160_23", "L3_S43_F4090", "L0_S0_F12_6", "L1_S24_F1539", 
"L0_S0_F8_24", "L0_S3_F96_4", "L0_S3_F80_6", "L1_S24_F1599", 
"DATE_S25min", "L0_S21_F487", "L0_S0_F6_4", "L3_S40_F3984", "DATE_S44max", 
"L0_S2_F32", "L1_S24_F1512", "L1_S24_F1122", "L1_S24_F1609", 
"L0_S1_F24_12", "L3_S48_F4196", "L0_S6_F132_4", "L0_S21_F472", 
"L0_S2_F64_5", "L1_S25_F2111", "L0_S4_F104_7", "L0_S3_F72_3", 
"L1_S25_F2170", "L3_S38_F3956", "L0_S5_F114_14", "L1_S24_F1738", 
"L1_S24_F1753", "L1_Unique_Count", "L1_S24_F1822", "L1_S24_F1748", 
"L1_S25_F1973", "L3_S40_F3986", "L1_S25_F2106", "L0_S9_F170_19", 
"L0_S21_F527", "S32min_S30min", "L0_S0_F10_3", "L0_S4_F104_21", 
"L3_S47_F4158", "L0_S3_F72_6", "L0_S0_F10_14", "L1_S24_F1713", 
"L0_S9_F170_24", "L0_S0_F14_37", "L0_S0_F0_7", "L3_S47_F4138", 
"L0_S20_F461", "L0_S2_F40", "L1_S24_F1728", "L0_S9_F160_18", 
"L1_S25_F2101", "L0_S0_F4_22", "DATE_S12max", "L1_S24_F1647", 
"L1_S25_F1892", "L1_S24_F1820", "L0_S6_F132_3", "L0_S6_F122_13", 
"L1_S24_F1818", "L0_S0_F8_11", "L0_S0_F18_12", "L0_S2_F40_17", 
"L1_S24_F1814", "L1_S25_F2056", "DATE_S43max", "DATE_S40max", 
"L0_S6_F122_14", "L1_S24_F1733", "BAC165_LAG1_Sum_ResponseMinus1", 
"L0_S0_F12_15", "L3_S40_F3980", "L0_S4_F104_12", "L1_S25_F1938", 
"L0_S2_F40_15", "L0_S3_F76", "L0_S4_F109_16", "L0_S2_F32_17", 
"L1_S24_F1743", "L0_S5_F116_3", "L3_S36_F3938", "L0_S5_F114_15", 
"L0_S9_F165_4", "L0_S15_F400", "L3_S41_F4023", "L0_S0_F18_15", 
"L0_S5_F116_15", "L0_S3_F92", "L1_S25_F2173", "L0_S0_F14_15", 
"L3_S41_F4000", "BAC165_LAG0_Sum_ResponseMinus1", "L1_S24_F829", 
"L0_S0_F14_6", "L0_S7_F142_16", "L1_S25_F1978", "L0_S0_F6_22", 
"L1_S24_F1810")


See the screenshots for more accuracy about the gain


```
