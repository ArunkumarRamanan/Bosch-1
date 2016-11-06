```r
Fold 1 converged after 0108 iterations.
Fold 2 converged after 0103 iterations.
Fold 3 converged after 0101 iterations.
Fold 4 converged after 0141 iterations.
Fold 5 converged after 0137 iterations.
Iterations: 118.00 + 19.391


Fold 1: AUC=0.9123915
Fold 2: AUC=0.9196222
Fold 3: AUC=0.9200650
Fold 4: AUC=0.9199460
Fold 5: AUC=0.9186958
AUC: 0.9181441 + 0.0032603
Average AUC using all data: 0.9059478


Fold 1: MCC=0.4753620 (0545 [39.64%] positives), threshold=0.3766170 => True positives = 75.780%
Fold 2: MCC=0.4764958 (0601 [43.68%] positives), threshold=0.3331590 => True positives = 72.379%
Fold 3: MCC=0.4802754 (0589 [42.81%] positives), threshold=0.3294700 => True positives = 73.684%
Fold 4: MCC=0.4830652 (0500 [36.34%] positives), threshold=0.4173190 => True positives = 80.400%
Fold 5: MCC=0.4806891 (0588 [42.73%] positives), threshold=0.3152640 => True positives = 73.810%
MCC: 0.4791775 + 0.0031763
Threshold: 0.3543658 + 0.0420021
Positives: 564.60 + 041.91
Detection Rate %: 41.038 + 03.042
True positives %: 75.211 + 03.145
Undetected positives: 0952.20 + 0015.04
Average MCC on all data (5 fold): 0.4758252, threshold=0.3543658
Average MCC using all data: 0.4768728, threshold=0.3298790


Submission overfitted threshold on all MCC positives: 2998

Submission average validated threshold on all MCC positives: 2831

Submission average of overfit+validated threshold positives: 2908

Submission with all data overfitted threshold on all MCC positives: 3051. Threshold=0.329879

Submission with all data average validated threshold on all MCC positives: 2895. Threshold=0.3543658

Submission with all data average of overfit+validated threshold positives: 2970. Threshold=0.3421224

Submission with all data by taking the amount of positives of overfitted threshold on all MCC positives: 2998. Threshold=0.338092

Submission with all data by taking the amount of positives of average validated threshold on all MCC positives: 2831. Threshold=0.365079

Submission with all data by taking the amount of positives of average of overfit+validated threshold positives: 2908. Threshold=0.352155

Submission with all data by taking the sum of positives of validated positives: 2823. Threshold=0.366096

Cross-validated used features list (all used features to copy & paste):

c("sta_30m4", "sameL0_next", "sta_37m4", "CATEGORICAL_Last_____1", 
"S24.311", "gf1_1", "sta_38m4", "sta_34m4", "gf0_1", "FOR60_Sum_S3", 
"BAC60_Sum_S3", "DATE_S33max", "DATE_L3kurt", "FOR30_Sum_S", 
"S33", "sta_29m4", "BAC30_Sum_S", "sameL3_prev", "sta_37m3", 
"BAC100_Sum", "S29", "FOR100_log_lag_L3", "BAC100_log_lag_L3", 
"FOR100_Sum", "FOR165_Sum", "FOR165_log_lag", "FOR165_log_lag_L3", 
"sameL1.0_V2_next", "sta_30m3", "BAC100_log_lag", "DATE_S34max", 
"FOR100_log_lag", "sta_29m3", "Kurtosis", "L3_S33_F3857", "sta_33m4", 
"S33max_S29min", "L3_S30_F3754", "sta_33m3", "L3_S33_F3859", 
"CATEGORICAL_Last_____2", "BAC165_log_lag", "S30", "L3_S30_F3744", 
"DATE_S32max", "BAC165_log_lag_L3", "sta_34m3", "L3_S30_F3759", 
"BAC165_Sum", "tdelta_devrel", "L3_S30_F3804", "L3_S30_F3774", 
"L3_S33_F3865", "L3_S30_F3809", "L3_L3_Unique_Count", "d_rel_d_29.0", 
"S1", "L3_S30_F3749", "L3_S29_F3351", "sameL0_prev", "L0_Mean", 
"L3_S29_F3348", "L3_S29_F3345", "d_29.0", "Range", "L0_S1_F28", 
"L3_S30_F3769", "L3_S29_F3373", "sameL1_next", "S0", "sta_36m3", 
"L3_S30_F3554", "L3_S30_F3494", "L0_S0_F20_Mult_L0_S0_F20", "L3_S29_F3342", 
"L3_S30_F3704", "L3_S29_F3324", "sameL6.0_V2_prev", "L3_S29_F3427", 
"L3_S29_F3354", "BAC60_log_lag_S34", "S24.308", "S32", "L3_S29_F3379", 
"L3_S30_F3829", "L3_S29_F3327", "S36", "L3_S29_F3321", "L3_S29_F3333", 
"L3_S30_F3609", "L0_Max", "L0_S1_F24", "L3_S36_F3920", "L3_S30_F3544", 
"L3_S29_F3479", "L3_S29_F3339", "L3_S30_F3574", "sta_35m3", "S32_dest_33.0", 
"L3_S30_F3604", "L3_S29_F3315", "L3_S29_F3336", "Response_Minus1", 
"L3_S29_F3376", "L0_S9_F180", "L0_Min", "L3_S30_F3794", "S3", 
"S2", "L3_S29_F3382", "sameL6.0_V2_next", "FOR60_log_lag_S34", 
"sameL2_next", "S24.307", "gf0_-1", "L3_S29_F3330", "L0_S0_F20", 
"sta_0m3", "L3_S30_F3534", "sta_8m3", "L3_S30_F3519", "FOR165_log_lag_L2", 
"BAC60_log_lag_S33", "L0_S0_F18", "L3_S30_F3784", "S35", "L3_S30_F3629", 
"BAC30_log_lag_S34", "L3_S30_F3819", "BAC165_log_lag_L2", "L3_S30_F3639", 
"S11", "L3_S30_F3514", "L0_S0_F16", "L0_S0_F2", "L3_S29_F3433", 
"L0_S0_F0", "L3_S30_F3524", "L3_Min", "L3_S30_F3504", "FOR30_log_lag_S34", 
"L3_Max", "FOR60_log_lag_S30", "BAC165_log_lag_L0", "DATE_S37max", 
"DATE_S35max", "L2_Min", "S10", "sta_1m3", "sta_5m3", "S7", "L3_S30_F3624", 
"L3_S29_F3318", "L3_S29_F3473", "L0_S10_F244", "L3_S30_F3509", 
"sameL3_next", "L0max_L3max", "L3_S30_F3709", "DATE_S30max", 
"L3_S30_F3799", "BAC165_LAG2_Missing_Value_Count_ResponseMinus1", 
"S4", "FOR165_log_lag_L1", "L3_S29_F3430", "L0_S2_F36", "S33min_S30min", 
"S5", "L3_Range", "BAC30_log_lag_S33", "L3max_L0min", "gf1_-1", 
"L0_S5_F114", "S6", "S29min_S37min", "Min", "L3_S29_F3436", "Response_Minus1_Number1", 
"sta_6m3", "L0_S2_F44", "FOR100_log_lag_L2", "BAC165_log_lag_L1", 
"BAC100_LAG3_Missing_Value_Count_ResponseMinus1", "L0_S11_F322", 
"L3_S30_F3764", "L3_S30_F3579", "sta_4m3", "BAC30_log_lag_S30", 
"FOR165_LAG3_Missing_Value_Count_ResponseMinus1", "DATE_S36max", 
"sta_2m3", "FOR165_LAG_Count_Mult_ResponseMinus1", "FOR60_log_lag_S33", 
"FOR165_LAG_Missing_Value_Count_ResponseMinus1", "FOR165_log_lag_L0", 
"BAC100_log_lag_L1", "L0_S2_F60", "BAC165_LAG0_Missing_Value_Count_ResponseMinus1", 
"S13", "sta_7m3", "sta_3m3", "L0_S3_F100", "L0_S4_F104", "FOR165_LAG2_Missing_Value_Count_ResponseMinus1", 
"L0_S6_F132", "S30min_S37min", "L0_S11_F310", "FOR100_LAG_Count_Mult_ResponseMinus1", 
"FOR165_LAG1_Missing_Value_Count_ResponseMinus1", "L0_S5_F116", 
"Mean", "S12", "BAC100_log_lag_L2", "FOR165_LAG3_Count_Mult_ResponseMinus1", 
"L3_S29_F3357", "FOR100_LAG_Missing_Value_Count_ResponseMinus1", 
"BAC165_LAG1_Count_Mult_ResponseMinus1", "L0_S7_F138", "FOR100_LAG0_Missing_Value_Count_ResponseMinus1", 
"FOR30_log_lag_S33", "BAC165_LAG2_Count_Mult_ResponseMinus1", 
"BAC100_log_lag_L0", "S9", "FOR165_LAG0_Missing_Value_Count_ResponseMinus1", 
"BAC165_LAG_Count_Mult_ResponseMinus1", "BAC165_LAG_Missing_Value_Count_ResponseMinus1", 
"S24.211", "FOR100_LAG1_Missing_Value_Count_ResponseMinus1", 
"FOR100_LAG_Sum_ResponseMinus1", "L3_S30_F3644", "BAC100_LAG_Missing_Value_Count_ResponseMinus1", 
"FOR100_LAG3_Missing_Value_Count_ResponseMinus1", "L0_S3_F96", 
"BAC100_LAG0_Missing_Value_Count_ResponseMinus1", "FOR165_LAG1_Count_Mult_ResponseMinus1", 
"sta_8m4", "L3_S30_F3684", "FOR30_log_lag_S30", "L0_S3_F80", 
"FOR165_LAG2_Count_Mult_ResponseMinus1", "BAC165_LAG1_Missing_Value_Count_ResponseMinus1", 
"BAC165_LAG0_Count_Mult_ResponseMinus1", "BAC100_LAG2_Missing_Value_Count_ResponseMinus1", 
"BAC60_log_lag_S30", "L0_S6_F122", "L3max_S30max", "L3_S29_F3476", 
"BAC100_LAG2_Count_Mult_ResponseMinus1", "L0_S3_F72", "BAC165_LAG3_Count_Mult_ResponseMinus1", 
"FOR165_LAG0_Count_Mult_ResponseMinus1", "L3_S35_F3889", "L0_S2_F64", 
"L2_S26_F3062", "L3_S35_F3896", "L3_S30_F3669", "L0_S4_F109", 
"Unique_Count", "L0_S0_F4", "DATE_L1kurt", "FOR100_LAG3_Count_Mult_ResponseMinus1", 
"FOR100_log_lag_L1", "BAC165_LAG3_Missing_Value_Count_ResponseMinus1", 
"BAC100_LAG3_Count_Mult_ResponseMinus1", "L0_S0_F8", "BAC100_LAG_Count_Mult_ResponseMinus1", 
"L3_S30_F3689", "S33min_S37min", "S17", "CATEGORICAL_out_out_L3_S32_F3854_class2", 
"L0_S11_F326", "FOR100_LAG2_Missing_Value_Count_ResponseMinus1", 
"L0_S9_F170", "L3_S29_F3461", "FOR100_LAG0_Count_Mult_ResponseMinus1", 
"sta_11m3", "L0_S7_F142", "FOR100_LAG2_Count_Mult_ResponseMinus1", 
"L3_S30_F3589", "L2_S26_F3069", "L0_S0_F6", "sta_9m3", "DATE_S3_max", 
"DATE_S29max", "L3_S30_F3569", "L3_S29_F3407", "L2max_S37max", 
"BAC100_LAG1_Missing_Value_Count_ResponseMinus1", "S26", "L0_S0_F14", 
"S8", "DATE_S6_max", "L0_S13_F354", "L0_Range", "L3max_S34min", 
"L2_S26_F3106", "sta_36m4", "S14", "L0_S0_F22", "L3_S30_F3584", 
"L0_S21_F497", "FOR100_LAG1_Count_Mult_ResponseMinus1", "BAC100_LAG0_Count_Mult_ResponseMinus1", 
"L0_S10_F254", "L1_S24_F1723", "L0_S9_F155", "L0_S11_F302", "L0_S9_F165", 
"BAC100_LAG1_Count_Mult_ResponseMinus1", "DATE_S5_max", "L0_S0_F10", 
"FOR100_log_lag_L0", "CATEGORICAL_Missing_Value_Count", "L0_S13_F356", 
"sta_10m3", "S29min_S34min", "L0_S10_F259", "L0_S11_F286", "L3_S30_F3664", 
"sta_5m4", "S27", "S24.3", "L0_S9_F185", "sameL2_prev", "L3_S30_F3674", 
"S36max_S29min", "CATEGORICAL_Unique_Count", "S30min_S35min", 
"L0_S10_F229", "L0_S10_F249", "L3_S30_F3634", "L0_S12_F332", 
"L1_S24_F1578", "L3_S30_F3564", "L0_S9_F195", "L0_S12_F348", 
"tdeltadevrel_block1", "gf1_0", "d_rel_d_26.0", "L3_S30_F3679", 
"L0_S9_F190", "DATE_S4_max", "DATE_S0_max", "DATE_S7_max", "S37min_S34min", 
"L0_S11_F318", "L0_S11_F306", "DATE_S8_max", "sta_1m4", "DATE_S2_max", 
"L0_S12_F330", "L0_S9_F160", "S18", "L0_S11_F290", "L0_S11_F294", 
"S29max_S35max", "L2_S27_F3129", "L0_S10_F224", "L0_S0_F12", 
"S25.109", "gf0_0", "S19", "L1_Range", "S38", "sta_26m3", "L1_Min", 
"sta_35m4", "L2_S27_F3162", "sta_7m4", "L0_S10_F219", "L0_S12_F346", 
"DATE_S24max", "L2_S26_F3117", "L0_S2_F48", "L0_S23_F643", "L2_S27_F3155", 
"d_27.0", "S20", "L0_S12_F350", "S41", "L0_S23_F667", "tdeltadevrel_block1a", 
"d_rel_d_39.0", "sta_0m4", "DATE_S1_max", "S34", "L2_S26_F3113", 
"sta_14m3", "S15", "S29min_S32min", "S47", "L1_S24_F1844", "DATE_S16max", 
"S23", "sta_24m3", "S24.306", "DATE_S10max", "L1_S24_F1516", 
"L2_S27_F3210", "S16", "sta_32m3", "sta_12m3", "S40", "L2_S26_F3121", 
"L2_S26_F3073", "S27min_S32min", "S24.301", "sta_17m3", "S35min_L1min", 
"S48", "S33min_S35min", "L0_S11_F314", "S24.108", "sta_19m3", 
"S24.304", "L0_S3_F84", "S21", "sta_6m4", "L3_S41_F4008", "L0_S10_F234", 
"L2_S27_F3199", "L1_S24_F1514", "d_5.0", "L2_S26_F3040", "d_33.0", 
"S25.1", "DATE_S18max", "DATE_S11max", "L3_S29_F3360", "L2_S26_F3036", 
"L3_Unique_Count", "S45", "sta_13m3", "DATE_S38max", "L0_S15_F415", 
"L3_S32_F3850", "L0_Unique_Count", "L0_S11_F314_Mult_L0_S0_F20", 
"sta_9m4", "L1_S24_F1520", "sta_20m3", "L0_S11_F282", "L1_S24_F1850", 
"L3_S38_F3960", "L2_S26_F3047", "L0_S10_F264", "S24.303", "L0_S22_F591", 
"L3_S33_F3855", "S22", "sta_18m3", "L1_S24_F1773", "L0_S14_F386", 
"L1_S24_F1788", "L2_S27_F3206", "DATE_S9_max", "L0_S22_F571", 
"d_26.0", "S13min_S33min", "S24.305", "L0_S11_F314_Mult_L0_S11_F314", 
"sta_21m3", "L2_S26_F3051", "L1_Max", "sta_10m4", "L0_S17_F433", 
"sta_38m3", "sameL3.3_V2_prev", "S24.104", "L1_S24_F1463", "L1_S24_F1812", 
"S32max_S37min", "L3_S29_F3482", "sameL1_prev", "L3_S41_F4011", 
"DATE_S26max", "sta_3m4", "L0_S10_F274", "S33min_S36min", "L1_S24_F1667", 
"sameL1.0_V2_prev", "L0_S18_F439", "L0_S16_F426", "DATE_S15max", 
"L3_S35_F3894", "L0_S12_F336", "sta_15m3", "L1_S24_F1494", "L0_S22_F606", 
"L3max_S26max", "tdeltadevrel_block2", "L0_S14_F370", "L1_S24_F1652", 
"S26max_S32max", "sta_2m4", "L0_S23_F639", "L1_S24_F1518", "sta_25m3", 
"S24.309", "DATE_S24min", "L1_S24_F1632", "L0_S12_F334", "L0_S22_F576", 
"L0_S21_F522", "d_rel_d_27.0", "L2_S27_F3144", "S24.205", "L1_S24_F1842", 
"DATE_S22max", "L2_S27_F3214", "L0_S9_F210", "L1_S24_F1662", 
"DATE_S14max", "L1_S24_F1831", "sta_16m3", "L0_S9_F200", "DATE_S13max", 
"L0_S21_F532", "L3_L3_Missing_Value_Count", "sta_16m4", "L1_S24_F1783", 
"S24.31", "sta_27m3", "DATE_S27max", "L1_S24_F1829", "sta_4m4", 
"sta_41m4", "L0_S21_F482", "L3_S36_F3918", "S34min_S35min", "S25.102", 
"L0_S14_F362", "DATE_S21max", "d_30.0", "sta_39m3", "S25.104", 
"d_36.0", "L1_S24_F1763", "L1_S24_F1685", "L0_S10_F239", "L1_S24_F1672", 
"L0_S8_F144", "L0_S23_F655", "L1_S24_F1848", "L0_S12_F344", "L1_S25_F2101", 
"sta_23m3", "L1_S24_F1637", "S25.106", "L0_S23_F671", "L0_S19_F459", 
"L2_S27_F3133", "L0_S12_F342", "L0_S16_F421", "sta_22m3", "L1_S24_F1565", 
"DATE_S19max", "L3_S38_F3956", "L0_S19_F455", "S50", "L1_S24_F1758", 
"L1_S24_F1824", "L1_S25_F2158", "sta_11m4", "S37", "L0_S23_F627", 
"L2_S27_F3140", "L0_S14_F390", "FOR165_LAG3_Sum_ResponseMinus1", 
"L0_S15_F418", "L1_S25_F2161", "S25.101", "L0_S17_F431", "L2_Max", 
"L1_S24_F1573", "L1_S24_F1778", "S24.109", "L0_S2_F56", "L0_S15_F406", 
"L1_S25_F2131", "L1_S24_F1575", "S25.11", "L0_S22_F586", "d_rel_d_30.0", 
"L1_S25_F2116", "L2_S27_F3166", "FOR100_LAG3_Sum_ResponseMinus1", 
"L0_S14_F374", "L0_S18_F449", "S25.107", "L1_S24_F1571", "L1_S25_F1958", 
"L0_S15_F397", "L3_S47_F4163", "L0_S15_F403", "L1_S24_F1567", 
"L1_S24_F1581", "DATE_S17max", "sta_47m4", "L0_S21_F492", "L1_S24_F1512", 
"d_rel_d_38.0", "L1_S25_F2176", "L0_S23_F631", "S26min_S24min", 
"S26min_S37min", "L0_S22_F601", "S24.207", "S51", "L0_S12_F338", 
"L0_S3_F92", "L0_S21_F517", "sta_20m4", "L1_S24_F1544", "L1_S25_F2126", 
"L0_S2_F32", "L1_S24_F1798", "L0_S21_F507", "L0_S21_F502", "d_14.0", 
"sta_51m3", "d_rel_d_33.0", "L0_S3_F76", "L0_S21_F487", "L1_S24_F1814", 
"L0_S22_F596", "L3_S41_F4026", "L0_S23_F619", "L1_S24_F1822", 
"S49", "DATE_S25max", "L0_S12_F340", "L3_S40_F3986", "S32.0_comb_30.0-35.0", 
"sta_43m3", "sta_45m4", "sta_40m3", "L0_S21_F472", "L0_S2_F40", 
"d_34.0", "L3_S47_F4153", "sta_12m4", "S24.2", "sta_25m4", "L3_S48_F4198", 
"d_rel_d_36.0", "L0_S23_F659", "S24.202", "L3_S41_F4014", "L0_S12_F352", 
"sta_50m3", "L1_S25_F2136", "L0_S9_F175", "BAC100_LAG_Sum_ResponseMinus1", 
"S25.105", "L0_S21_F527", "L1_S24_F1803", "S24.11", "L3_S47_F4158", 
"sta_31m3", "L3_S41_F4004", "L1_S24_F1733", "sta_47m3", "sta_49m3", 
"sta_39m4", "DATE_S12max", "S39", "d_37.0", "d_rel_d_14.0", "d_4.0", 
"sameL4.1_V2_prev", "d_8.0", "L3_S41_F4006", "L3_S40_F3982", 
"S31", "L0_S22_F546", "L1_S24_F1818", "L1_S24_F1539", "L0_S22_F561", 
"sta_19m4", "sta_44m3", "d_39.0", "DATE_S23max", "L1_S25_F2106", 
"d_38.0", "L1_S25_F2091", "L1_S25_F2051", "BAC165_LAG3_Sum_ResponseMinus1", 
"BAC165_LAG_Sum_ResponseMinus1", "L0_S23_F663", "DATE_S20max", 
"L0_S3_F68", "L1_S25_F1892", "L0_S23_F623", "S44", "L3_S45_F4124", 
"S24.102", "L1_S25_F2170", "S32_dest_35.0", "sameL2.0_V2_prev", 
"S24.103", "sta_48m3", "L3_S43_F4080", "d_6.0", "S24.208", "L3_S47_F4138", 
"L3_S40_F3980", "FOR165_LAG_Sum_ResponseMinus1", "FOR165_LAG2_Sum_ResponseMinus1", 
"d_9.0", "S25.21", "S43", "L0_S6_F118", "L1_S24_F1753", "L0_S21_F537", 
"FOR100_LAG2_Sum_ResponseMinus1", "L1_S24_F1738", "L1_S24_F1647", 
"L1_S25_F2155", "FOR100_LAG1_Sum_ResponseMinus1", "d_rel_d_37.0", 
"L1_S24_F1609", "S25.205", "S24.106", "S25.202", "sta_24m4", 
"S32.0_comb_30.0-36.0", "sta_32m4", "S24.209", "S32min_S30min", 
"L3_S41_F4020", "sta_45m3", "sta_26m4", "d_35.0", "L1_S24_F1846", 
"L1_S24_F1700", "sta_27m4", "S25.108", "S32min_S10min", "sta_51m4", 
"DATE_S25min", "S24.201", "L1_S25_F2111", "L1_S24_F1743", "sta_18m4", 
"L0_S22_F551", "L0_S21_F477", "L3_S40_F3984", "d_7.0", "sta_49m4", 
"L3_S41_F4023", "L0_S20_F461", "sta_15m4", "S24.112", "sta_14m4", 
"L3_S43_F4090", "S33min_S34min", "S24.206", "L1_S24_F1808", "L2_S28_F3248", 
"sta_22m4", "L1_S25_F1938", "d_13.0", "L0_S21_F512", "L1_S24_F1690", 
"S35.0_comb_32.0-37.0", "sta_41m3", "L3_S44_F4118", "BAC165_LAG0_Sum_ResponseMinus1", 
"S37.0_comb_35.0-38.0", "L3_S48_F4196", "L1_S24_F1728", "L1_S25_F1900", 
"S37.0_comb_35.0--1.0", "sta_21m4", "L0_S22_F611", "L1_S24_F1599", 
"d_3.0", "L3_S41_F4016", "L1_Unique_Count", "L3_S30_F3499", "S29.0_comb_9.0-30.0", 
"S27.0_comb_10.0-29.0", "S29.0_comb_10.0-30.0", "L1_S25_F2071", 
"DATE_S47max", "L1_L1_Missing_Value_Count", "L1_S24_F1816", "d_2.0", 
"L3_S44_F4115", "L1_S24_F1820", "L1_S25_F2056", "S25.222", "L1_S25_F1855", 
"d_15.0", "sameL3.1_V2_prev", "S25.23", "DATE_S45min", "S25.207", 
"L0_S7_F136", "sameL4.1_V2_next", "S28", "d_rel_d_35.0", "L3_S49_F4211", 
"FOR165_LAG0_Sum_ResponseMinus1", "d_10.0", "S25.226", "d_1.0", 
"L0_S10_F269", "L1_S24_F1482", "d_rel_d_2.0", "S34.0_comb_33.0-35.0", 
"d_rel_d_34.0", "DATE_S50max", "L3_S50_F4243", "L3_S41_F4000", 
"sameL3.3_V2_next", "L1_S24_F983", "DATE_S28max", "L1_S25_F1973", 
"L0_S23_F651", "sta_17m4", "L0_S22_F556", "sta_28m4", "DATE_S44max", 
"sta_23m4", "sta_43m4", "L1_S24_F1594", "L1_S24_F1657", "BAC100_LAG3_Sum_ResponseMinus1", 
"S25max_S32min", "sameL2.0_V2_next", "L1_S24_F1793", "DATE_S48max", 
"L1_S24_F1498", "S25.211", "S24.101", "L1_S24_F1366", "L1_S25_F2167", 
"L1_S24_F1836", "L1_S24_F1627", "S29.0_comb_23.0-30.0", "L3_S47_F4143", 
"L0_S15_F400", "S29.0_comb_11.0-30.0", "d_rel_d_7.0", "S24.21", 
"L1_S24_F1748", "S25.223", "sameL7.0_V2_next", "S24.203", "BAC100_LAG1_Sum_ResponseMinus1", 
"L1_S25_F2152", "L1_S24_F1718", "sta_48m4", "L1_S24_F1838", "S32max_S25min", 
"d_11.0", "DATE_S40max", "L1_S24_F1642", "L1_S24_F1810", "d_rel_d_3.0", 
"L1_S25_F1869", "sameL7.0_V2_prev", "d_rel_d_15.0", "BAC100_LAG2_Sum_ResponseMinus1", 
"d_17.0", "L3_S44_F4112", "sta_40m4", "DATE_S49max", "L1_S25_F1877", 
"L1_S25_F2147", "L1_S24_F1122", "S30.0_comb_29.0-32.0", "S30.0_comb_29.0-33.0", 
"d_19.0", "L1_S24_F1391", "S24.111", "S35.0_comb_34.0-37.0", 
"S29.0_comb_21.0-30.0", "d_rel_d_6.0", "L1_S25_F1968", "S25.224", 
"L3_S47_F4148", "L1_S25_F2173", "S25.203", "S34.0_comb_33.0-36.0", 
"L1_S24_F1834", "L0_S9_F205", "CATEGORICAL_out_L3_S32_F3854_class1", 
"S32.0_comb_30.0-33.0", "L1_S25_F1992", "L1_S25_F2031", "d_20.0", 
"sta_13m4", "L1_S25_F1858", "L1_S24_F1041", "FOR165_LAG1_Sum_ResponseMinus1", 
"L3_S36_F3938", "L1_S24_F988", "L1_S24_F1622", "DATE_S41max", 
"L1_S24_F1490", "L1_S24_F1172", "L1_S24_F1768", "sta_28m3", "L3_S31_F3842", 
"L1_S24_F1166", "BAC100_LAG0_Sum_ResponseMinus1", "d_24.311", 
"DATE_S43max", "d_24.306", "L1_S25_F2086", "L3_S29_F3488", "S25.225", 
"sta_50m4", "L1_S25_F2016", "L3_S44_F4121", "sta_44m4", "S37.0_comb_36.0-38.0", 
"S24.107", "d_rel_d_1.0", "FOR100_LAG0_Sum_ResponseMinus1", "S24.311_comb_24.31-29.0", 
"L3_S30_F3649", "S25.204", "d_25.222", "d_rel_d_32.0", "S27.0_comb_9.0-29.0", 
"L1_S24_F1202", "L1_S24_F1331", "L1_S25_F2081", "d_22.0", "DATE_S39max", 
"DATE_S51max", "d_18.0", "d_16.0", "S25.229", "L1_S24_F1245", 
"d_rel_d_48.0", "BAC165_LAG1_Sum_ResponseMinus1", "S37.0_comb_36.0--1.0", 
"sameL3.1_V2_next", "sameL4.0_V2_prev", "L1_S24_F1713", "d_24.208", 
"d_rel_d_24.311", "L3_S43_F4085", "L1_S25_F2144", "d_31.0", "L1_S24_F1506", 
"S25.208", "sameL3.2_V2_prev", "DATE_S31max", "d_25.108", "L1_S24_F1356", 
"S36.0_comb_34.0-37.0", "d_rel_d_11.0", "L3_S38_F3952", "d_rel_d_8.0", 
"L3_S43_F4095", "d_25.109", "S25.22", "BAC165_LAG2_Sum_ResponseMinus1", 
"L1_S24_F958", "d_24.206", "L1_S24_F829", "S32_dest_36.0", "L1_S25_F1909", 
"d_44.0", "CATEGORICAL_Max______3", "S25.206", "L1_S25_F1978", 
"L1_S25_F2797", "d_rel_d_4.0", "L1_S24_F814", "S24.311_comb_24.31-26.0", 
"d_rel_d_9.0", "d_48.0", "d_rel_d_19.0", "d_25.105", "L2_S26_F3077", 
"L1_S24_F963", "L2_S26_F3125", "L1_S24_F948", "S34.0_comb_nan-nan", 
"L1_S24_F1056", "d_24.301", "L2_L2_Unique_Count", "L1_S25_F2164", 
"L1_S25_F2061", "d_24.305", "sameL3.2_V2_next", "d_21.0", "L0_S14_F366", 
"S29.0_comb_24.311-30.0", "d_24.304", "d_rel_d_18.0", "d_24.309", 
"S25.216", "d_24.308", "d_49.0", "d_24.31", "d_25.102", "d_rel_d_13.0", 
"S32.0_comb_30.0-34.0", "L3_S30_F3734", "L3_S34_F3882", "S25.209", 
"L2_S28_F3307", "Max", "d_rel_d_25.107", "d_24.303", "d_rel_d_16.0", 
"sameL4.0_V2_next", "L1_S24_F691", "sameL4.4_V2_prev", "S24.311_comb_24.31-27.0", 
"d_rel_d_28.0", "S25.217", "d_rel_d_24.304", "S29.0_comb_22.0-30.0", 
"d_rel_d_24.306", "S25.214", "S36.0_comb_nan-nan", "d_47.0", 
"d_rel_d_44.0", "d_25.11", "S27.0_comb_24.311-29.0", "L1_S24_F1197", 
"L1_S24_F1240", "S27.0_comb_25.11-29.0", "L1_S25_F2041", "CATEGORICAL_Max______1", 
"d_24.11", "d_24.307", "S25.201", "S25.228", "d_32.0")


Cross-validated multipresence used features list (all used features to copy & paste):

c("sta_30m4", "sameL0_next", "sta_37m4", "CATEGORICAL_Last_____1", 
"S24.311", "gf1_1", "sta_38m4", "sta_34m4", "gf0_1", "FOR60_Sum_S3", 
"BAC60_Sum_S3", "DATE_S33max", "DATE_L3kurt", "FOR30_Sum_S", 
"S33", "sta_29m4", "BAC30_Sum_S", "sameL3_prev", "sta_37m3", 
"BAC100_Sum", "S29", "FOR100_log_lag_L3", "BAC100_log_lag_L3", 
"FOR100_Sum", "FOR165_Sum", "FOR165_log_lag", "FOR165_log_lag_L3", 
"sameL1.0_V2_next", "sta_30m3", "BAC100_log_lag", "DATE_S34max", 
"FOR100_log_lag", "sta_29m3", "Kurtosis", "L3_S33_F3857", "sta_33m4", 
"S33max_S29min", "L3_S30_F3754", "sta_33m3", "L3_S33_F3859", 
"CATEGORICAL_Last_____2", "BAC165_log_lag", "S30", "L3_S30_F3744", 
"DATE_S32max", "BAC165_log_lag_L3", "sta_34m3", "L3_S30_F3759", 
"BAC165_Sum", "tdelta_devrel", "L3_S30_F3804", "L3_S30_F3774", 
"L3_S33_F3865", "L3_S30_F3809", "L3_L3_Unique_Count", "d_rel_d_29.0", 
"S1", "L3_S30_F3749", "L3_S29_F3351", "sameL0_prev", "L0_Mean", 
"L3_S29_F3348", "L3_S29_F3345", "d_29.0", "Range", "L0_S1_F28", 
"L3_S30_F3769", "L3_S29_F3373", "sameL1_next", "S0", "sta_36m3", 
"L3_S30_F3554", "L3_S30_F3494", "L0_S0_F20_Mult_L0_S0_F20", "L3_S29_F3342", 
"L3_S30_F3704", "L3_S29_F3324", "sameL6.0_V2_prev", "L3_S29_F3427", 
"L3_S29_F3354", "BAC60_log_lag_S34", "S24.308", "S32", "L3_S29_F3379", 
"L3_S30_F3829", "L3_S29_F3327", "S36", "L3_S29_F3321", "L3_S29_F3333", 
"L3_S30_F3609", "L0_Max", "L0_S1_F24", "L3_S36_F3920", "L3_S30_F3544", 
"L3_S29_F3479", "L3_S29_F3339", "L3_S30_F3574", "sta_35m3", "S32_dest_33.0", 
"L3_S30_F3604", "L3_S29_F3315", "L3_S29_F3336", "Response_Minus1", 
"L3_S29_F3376", "L0_S9_F180", "L0_Min", "L3_S30_F3794", "S3", 
"S2", "L3_S29_F3382", "sameL6.0_V2_next", "FOR60_log_lag_S34", 
"sameL2_next", "S24.307", "gf0_-1", "L3_S29_F3330", "L0_S0_F20", 
"sta_0m3", "L3_S30_F3534", "sta_8m3", "L3_S30_F3519", "FOR165_log_lag_L2", 
"BAC60_log_lag_S33", "L0_S0_F18", "L3_S30_F3784", "S35", "L3_S30_F3629", 
"BAC30_log_lag_S34", "L3_S30_F3819", "BAC165_log_lag_L2", "L3_S30_F3639", 
"S11", "L3_S30_F3514", "L0_S0_F16", "L0_S0_F2", "L3_S29_F3433", 
"L0_S0_F0", "L3_S30_F3524", "L3_Min", "L3_S30_F3504", "FOR30_log_lag_S34", 
"L3_Max", "FOR60_log_lag_S30", "BAC165_log_lag_L0", "DATE_S37max", 
"DATE_S35max", "L2_Min", "S10", "sta_1m3", "sta_5m3", "S7", "L3_S30_F3624", 
"L3_S29_F3318", "L3_S29_F3473", "L0_S10_F244", "L3_S30_F3509", 
"sameL3_next", "L0max_L3max", "L3_S30_F3709", "DATE_S30max", 
"L3_S30_F3799", "BAC165_LAG2_Missing_Value_Count_ResponseMinus1", 
"S4", "FOR165_log_lag_L1", "L3_S29_F3430", "L0_S2_F36", "S33min_S30min", 
"S5", "L3_Range", "BAC30_log_lag_S33", "L3max_L0min", "gf1_-1", 
"L0_S5_F114", "S6", "S29min_S37min", "Min", "L3_S29_F3436", "Response_Minus1_Number1", 
"sta_6m3", "L0_S2_F44", "FOR100_log_lag_L2", "BAC165_log_lag_L1", 
"BAC100_LAG3_Missing_Value_Count_ResponseMinus1", "L0_S11_F322", 
"L3_S30_F3764", "L3_S30_F3579", "sta_4m3", "BAC30_log_lag_S30", 
"FOR165_LAG3_Missing_Value_Count_ResponseMinus1", "DATE_S36max", 
"sta_2m3", "FOR165_LAG_Count_Mult_ResponseMinus1", "FOR60_log_lag_S33", 
"FOR165_LAG_Missing_Value_Count_ResponseMinus1", "FOR165_log_lag_L0", 
"BAC100_log_lag_L1", "L0_S2_F60", "BAC165_LAG0_Missing_Value_Count_ResponseMinus1", 
"S13", "sta_7m3", "sta_3m3", "L0_S3_F100", "L0_S4_F104", "FOR165_LAG2_Missing_Value_Count_ResponseMinus1", 
"L0_S6_F132", "S30min_S37min", "L0_S11_F310", "FOR100_LAG_Count_Mult_ResponseMinus1", 
"FOR165_LAG1_Missing_Value_Count_ResponseMinus1", "L0_S5_F116", 
"Mean", "S12", "BAC100_log_lag_L2", "FOR165_LAG3_Count_Mult_ResponseMinus1", 
"L3_S29_F3357", "FOR100_LAG_Missing_Value_Count_ResponseMinus1", 
"BAC165_LAG1_Count_Mult_ResponseMinus1", "L0_S7_F138", "FOR100_LAG0_Missing_Value_Count_ResponseMinus1", 
"FOR30_log_lag_S33", "BAC165_LAG2_Count_Mult_ResponseMinus1", 
"BAC100_log_lag_L0", "S9", "FOR165_LAG0_Missing_Value_Count_ResponseMinus1", 
"BAC165_LAG_Count_Mult_ResponseMinus1", "BAC165_LAG_Missing_Value_Count_ResponseMinus1", 
"S24.211", "FOR100_LAG1_Missing_Value_Count_ResponseMinus1", 
"FOR100_LAG_Sum_ResponseMinus1", "L3_S30_F3644", "BAC100_LAG_Missing_Value_Count_ResponseMinus1", 
"FOR100_LAG3_Missing_Value_Count_ResponseMinus1", "L0_S3_F96", 
"BAC100_LAG0_Missing_Value_Count_ResponseMinus1", "FOR165_LAG1_Count_Mult_ResponseMinus1", 
"sta_8m4", "L3_S30_F3684", "FOR30_log_lag_S30", "L0_S3_F80", 
"FOR165_LAG2_Count_Mult_ResponseMinus1", "BAC165_LAG1_Missing_Value_Count_ResponseMinus1", 
"BAC165_LAG0_Count_Mult_ResponseMinus1", "BAC100_LAG2_Missing_Value_Count_ResponseMinus1", 
"BAC60_log_lag_S30", "L0_S6_F122", "L3max_S30max", "L3_S29_F3476", 
"BAC100_LAG2_Count_Mult_ResponseMinus1", "L0_S3_F72", "BAC165_LAG3_Count_Mult_ResponseMinus1", 
"FOR165_LAG0_Count_Mult_ResponseMinus1", "L3_S35_F3889", "L0_S2_F64", 
"L2_S26_F3062", "L3_S35_F3896", "L3_S30_F3669", "L0_S4_F109", 
"Unique_Count", "L0_S0_F4", "DATE_L1kurt", "FOR100_LAG3_Count_Mult_ResponseMinus1", 
"FOR100_log_lag_L1", "BAC165_LAG3_Missing_Value_Count_ResponseMinus1", 
"BAC100_LAG3_Count_Mult_ResponseMinus1", "L0_S0_F8", "BAC100_LAG_Count_Mult_ResponseMinus1", 
"L3_S30_F3689", "S33min_S37min", "S17", "CATEGORICAL_out_out_L3_S32_F3854_class2", 
"L0_S11_F326", "FOR100_LAG2_Missing_Value_Count_ResponseMinus1", 
"L0_S9_F170", "L3_S29_F3461", "FOR100_LAG0_Count_Mult_ResponseMinus1", 
"sta_11m3", "L0_S7_F142", "FOR100_LAG2_Count_Mult_ResponseMinus1", 
"L3_S30_F3589", "L2_S26_F3069", "L0_S0_F6", "sta_9m3", "DATE_S3_max", 
"DATE_S29max", "L3_S30_F3569", "L3_S29_F3407", "L2max_S37max", 
"BAC100_LAG1_Missing_Value_Count_ResponseMinus1", "S26", "L0_S0_F14", 
"S8", "DATE_S6_max", "L0_S13_F354", "L0_Range", "L3max_S34min", 
"L2_S26_F3106", "sta_36m4", "S14", "L0_S0_F22", "L3_S30_F3584", 
"L0_S21_F497", "FOR100_LAG1_Count_Mult_ResponseMinus1", "BAC100_LAG0_Count_Mult_ResponseMinus1", 
"L0_S10_F254", "L1_S24_F1723", "L0_S9_F155", "L0_S11_F302", "L0_S9_F165", 
"BAC100_LAG1_Count_Mult_ResponseMinus1", "DATE_S5_max", "L0_S0_F10", 
"FOR100_log_lag_L0", "CATEGORICAL_Missing_Value_Count", "L0_S13_F356", 
"sta_10m3", "S29min_S34min", "L0_S10_F259", "L0_S11_F286", "L3_S30_F3664", 
"sta_5m4", "S27", "S24.3", "L0_S9_F185", "sameL2_prev", "L3_S30_F3674", 
"S36max_S29min", "CATEGORICAL_Unique_Count", "S30min_S35min", 
"L0_S10_F229", "L0_S10_F249", "L3_S30_F3634", "L0_S12_F332", 
"L1_S24_F1578", "L3_S30_F3564", "L0_S9_F195", "L0_S12_F348", 
"tdeltadevrel_block1", "gf1_0", "d_rel_d_26.0", "L3_S30_F3679", 
"L0_S9_F190", "DATE_S4_max", "DATE_S0_max", "DATE_S7_max", "S37min_S34min", 
"L0_S11_F318", "L0_S11_F306", "DATE_S8_max", "sta_1m4", "DATE_S2_max", 
"L0_S12_F330", "L0_S9_F160", "S18", "L0_S11_F290", "L0_S11_F294", 
"S29max_S35max", "L2_S27_F3129", "L0_S10_F224", "L0_S0_F12", 
"S25.109", "gf0_0", "S19", "L1_Range", "S38", "sta_26m3", "L1_Min", 
"sta_35m4", "L2_S27_F3162", "sta_7m4", "L0_S10_F219", "L0_S12_F346", 
"DATE_S24max", "L2_S26_F3117", "L0_S2_F48", "L0_S23_F643", "L2_S27_F3155", 
"d_27.0", "S20", "L0_S12_F350", "S41", "L0_S23_F667", "tdeltadevrel_block1a", 
"d_rel_d_39.0", "sta_0m4", "DATE_S1_max", "S34", "L2_S26_F3113", 
"sta_14m3", "S15", "S29min_S32min", "S47", "L1_S24_F1844", "DATE_S16max", 
"S23", "sta_24m3", "S24.306", "DATE_S10max", "L1_S24_F1516", 
"L2_S27_F3210", "S16", "sta_32m3", "sta_12m3", "S40", "L2_S26_F3121", 
"L2_S26_F3073", "S27min_S32min", "S24.301", "sta_17m3", "S35min_L1min", 
"S48", "S33min_S35min", "L0_S11_F314", "S24.108", "sta_19m3", 
"S24.304", "L0_S3_F84", "S21", "sta_6m4", "L3_S41_F4008", "L0_S10_F234", 
"L2_S27_F3199", "L1_S24_F1514", "d_5.0", "L2_S26_F3040", "d_33.0", 
"S25.1", "DATE_S18max", "DATE_S11max", "L3_S29_F3360", "L2_S26_F3036", 
"L3_Unique_Count", "S45", "sta_13m3", "DATE_S38max", "L0_S15_F415", 
"L3_S32_F3850", "L0_Unique_Count", "L0_S11_F314_Mult_L0_S0_F20", 
"sta_9m4", "L1_S24_F1520", "sta_20m3", "L0_S11_F282", "L1_S24_F1850", 
"L3_S38_F3960", "L2_S26_F3047", "L0_S10_F264", "S24.303", "L0_S22_F591", 
"L3_S33_F3855", "S22", "sta_18m3", "L1_S24_F1773", "L0_S14_F386", 
"L1_S24_F1788", "L2_S27_F3206", "DATE_S9_max", "L0_S22_F571", 
"d_26.0", "S13min_S33min", "S24.305", "L0_S11_F314_Mult_L0_S11_F314", 
"sta_21m3", "L2_S26_F3051", "L1_Max", "sta_10m4", "L0_S17_F433", 
"sta_38m3", "sameL3.3_V2_prev", "S24.104", "L1_S24_F1463", "L1_S24_F1812", 
"S32max_S37min", "L3_S29_F3482", "sameL1_prev", "L3_S41_F4011", 
"DATE_S26max", "sta_3m4", "L0_S10_F274", "S33min_S36min", "L1_S24_F1667", 
"sameL1.0_V2_prev", "L0_S18_F439", "L0_S16_F426", "DATE_S15max", 
"L3_S35_F3894", "L0_S12_F336", "sta_15m3", "L1_S24_F1494", "L0_S22_F606", 
"L3max_S26max", "tdeltadevrel_block2", "L0_S14_F370", "L1_S24_F1652", 
"S26max_S32max", "sta_2m4", "L0_S23_F639", "L1_S24_F1518", "sta_25m3", 
"S24.309", "DATE_S24min", "L1_S24_F1632", "L0_S12_F334", "L0_S22_F576", 
"L0_S21_F522", "d_rel_d_27.0", "L2_S27_F3144", "S24.205", "L1_S24_F1842", 
"DATE_S22max", "L2_S27_F3214", "L0_S9_F210", "L1_S24_F1662", 
"DATE_S14max", "L1_S24_F1831", "sta_16m3", "L0_S9_F200", "DATE_S13max", 
"L0_S21_F532", "L3_L3_Missing_Value_Count", "sta_16m4", "L1_S24_F1783", 
"S24.31", "sta_27m3", "DATE_S27max", "L1_S24_F1829", "sta_4m4", 
"sta_41m4", "L0_S21_F482", "L3_S36_F3918", "S34min_S35min", "S25.102", 
"L0_S14_F362", "DATE_S21max", "d_30.0", "sta_39m3", "S25.104", 
"d_36.0", "L1_S24_F1763", "L1_S24_F1685", "L0_S10_F239", "L1_S24_F1672", 
"L0_S8_F144", "L0_S23_F655", "L1_S24_F1848", "L0_S12_F344", "L1_S25_F2101", 
"sta_23m3", "L1_S24_F1637", "S25.106", "L0_S23_F671", "L0_S19_F459", 
"L2_S27_F3133", "L0_S12_F342", "L0_S16_F421", "sta_22m3", "L1_S24_F1565", 
"DATE_S19max", "L3_S38_F3956", "L0_S19_F455", "S50", "L1_S24_F1758", 
"L1_S24_F1824", "L1_S25_F2158", "sta_11m4", "S37", "L0_S23_F627", 
"L2_S27_F3140", "L0_S14_F390", "FOR165_LAG3_Sum_ResponseMinus1", 
"L0_S15_F418", "L1_S25_F2161", "S25.101", "L0_S17_F431", "L2_Max", 
"L1_S24_F1573", "L1_S24_F1778", "S24.109", "L0_S2_F56", "L0_S15_F406", 
"L1_S25_F2131", "L1_S24_F1575", "S25.11", "L0_S22_F586", "d_rel_d_30.0", 
"L1_S25_F2116", "L2_S27_F3166", "FOR100_LAG3_Sum_ResponseMinus1", 
"L0_S14_F374", "L0_S18_F449", "S25.107", "L1_S24_F1571", "L1_S25_F1958", 
"L0_S15_F397", "L3_S47_F4163", "L0_S15_F403", "L1_S24_F1567", 
"L1_S24_F1581", "DATE_S17max", "sta_47m4", "L0_S21_F492", "L1_S24_F1512", 
"d_rel_d_38.0", "L1_S25_F2176", "L0_S23_F631", "S26min_S24min", 
"S26min_S37min", "L0_S22_F601", "S24.207", "S51", "L0_S12_F338", 
"L0_S3_F92", "L0_S21_F517", "sta_20m4", "L1_S24_F1544", "L1_S25_F2126", 
"L0_S2_F32", "L1_S24_F1798", "L0_S21_F507", "L0_S21_F502", "d_14.0", 
"sta_51m3", "d_rel_d_33.0", "L0_S3_F76", "L0_S21_F487", "L1_S24_F1814", 
"L0_S22_F596", "L3_S41_F4026", "L0_S23_F619", "L1_S24_F1822", 
"S49", "DATE_S25max", "L0_S12_F340", "L3_S40_F3986", "S32.0_comb_30.0-35.0", 
"sta_43m3", "sta_45m4", "sta_40m3", "L0_S21_F472", "L0_S2_F40", 
"d_34.0", "L3_S47_F4153", "sta_12m4", "S24.2", "sta_25m4", "L3_S48_F4198", 
"d_rel_d_36.0", "L0_S23_F659", "S24.202", "L3_S41_F4014", "L0_S12_F352", 
"sta_50m3", "L1_S25_F2136", "L0_S9_F175", "BAC100_LAG_Sum_ResponseMinus1", 
"S25.105", "L0_S21_F527", "L1_S24_F1803", "S24.11", "L3_S47_F4158", 
"sta_31m3", "L3_S41_F4004", "L1_S24_F1733", "sta_47m3", "sta_49m3", 
"sta_39m4", "DATE_S12max", "S39", "d_37.0", "d_rel_d_14.0", "d_4.0", 
"sameL4.1_V2_prev", "d_8.0", "L3_S41_F4006", "L3_S40_F3982", 
"S31", "L0_S22_F546", "L1_S24_F1818", "L1_S24_F1539", "L0_S22_F561", 
"sta_19m4", "sta_44m3", "d_39.0", "DATE_S23max", "L1_S25_F2106", 
"d_38.0", "L1_S25_F2091", "L1_S25_F2051", "BAC165_LAG3_Sum_ResponseMinus1", 
"BAC165_LAG_Sum_ResponseMinus1", "L0_S23_F663", "DATE_S20max", 
"L0_S3_F68", "L1_S25_F1892", "L0_S23_F623", "S44", "L3_S45_F4124", 
"S24.102", "L1_S25_F2170", "S32_dest_35.0", "sameL2.0_V2_prev", 
"S24.103", "sta_48m3", "L3_S43_F4080", "d_6.0", "S24.208", "L3_S47_F4138", 
"L3_S40_F3980", "FOR165_LAG_Sum_ResponseMinus1", "FOR165_LAG2_Sum_ResponseMinus1", 
"d_9.0", "S25.21", "S43", "L0_S6_F118", "L1_S24_F1753", "L0_S21_F537", 
"FOR100_LAG2_Sum_ResponseMinus1", "L1_S24_F1738", "L1_S24_F1647", 
"L1_S25_F2155", "FOR100_LAG1_Sum_ResponseMinus1", "d_rel_d_37.0", 
"L1_S24_F1609", "S25.205", "S24.106", "S25.202")
```