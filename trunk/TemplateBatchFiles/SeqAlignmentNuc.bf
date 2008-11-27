/* START ALIGNMENT SETTINGS */alignOptions = {};alignOptions ["SEQ_ALIGN_CHARACTER_MAP"]="ACGT";scoreMatrix = {{5,-4,-4,-4}{-4,5,-4,-4}{-4,-4,5,-4}{-4,-4,-4,5}};alignOptions ["SEQ_ALIGN_SCORE_MATRIX"] = 	scoreMatrix;alignOptions ["SEQ_ALIGN_GAP_OPEN"]		= 	10;alignOptions ["SEQ_ALIGN_GAP_OPEN2"]	= 	5;alignOptions ["SEQ_ALIGN_GAP_EXTEND"]	= 	1;alignOptions ["SEQ_ALIGN_GAP_EXTEND2"]	= 	1;alignOptions ["SEQ_ALIGN_AFFINE"]		=   1;ChoiceList (refSeq,"Prefix/Suffix Indels",1,SKIP_NONE,"No penalty","Do not penalize prefix and suffix Indels","Normal penalty","Treat prefix and suffix indels as any other indels");if (refSeq < 0){	return 0;}alignOptions ["SEQ_ALIGN_NO_TP"]		=   1-refSeq;/* END ALIGNMENT SETTINGS *//* REFERENCE SEQUENCES OPTIONS */predefSeqNames = {{"First in file", "Use the first sequence in the data file as a reference"}				  {"Longest in file", "Use the longest sequence in the data file as the reference"}				 /*0*/ {"HXB2_env", "Use HIV-1 HXB2 reference strain envelope sequence (K03455)"}				 /*1*/ {"HXB2_nef", "Use HIV-1 HXB2 reference strain NEF sequence (K03455)"}				 /*2*/ {"HXB2_gag", "Use HIV-1 HXB2 reference strain gag sequence (K03455)"} 				 /*3*/ {"HXB2_vpr", "Use HIV-1 HXB2 reference strain vpr sequence (K03455)"} 				 /*4*/ {"HXB2_vif", "Use HIV-1 HXB2 reference strain vif sequence (K03455)"} 				 /*5*/ {"HXB2_vpu", "Use HIV-1 HXB2 reference strain vpu sequence (K03455)"} 				 /*6*/ {"HXB2_pr", "Use HIV-1 HXB2 reference strain protease sequence (K03455)"} 				 /*7*/ {"HXB2_rt", "Use HIV-1 HXB2 reference strain reverse transcriptase sequence (K03455)"} 				 /*8*/ {"HXB2_int", "Use HIV-1 HXB2 reference strain integrase sequence (K03455)"} 				 /*9*/ {"HXB2_rev", "Use HIV-1 HXB2 reference strain rev (exons 1 and 2)sequence (K03455)"} 				/*10*/ {"HXB2_tat", "Use HIV-1 HXB2 reference strain tat (exons 1 and 2) sequence (K03455)"} 				/*11*/ {"HXB2_prrt", "Use HIV-1 HXB2 reference strain protease+rt sequence (K03455)"}				/*12*/ {"NL4_3prrt", "Use HIV-1 NL4-3 reference strain pr+rt sequence"} 				/*13*/ {"HXB2_pol",  "Use HIV-1 HXB2 reference strain pol (starting at pr) sequence (K03455)"}				  				  };				  				  predefSeqNames2 = {{"No", "No reference coordinate sequences"}				 /*0*/ {"HXB2_env", "Use HIV-1 HXB2 reference strain envelope sequence (K03455)"}				 /*1*/ {"HXB2_nef", "Use HIV-1 HXB2 reference strain NEF sequence (K03455)"}				 /*2*/ {"HXB2_gag", "Use HIV-1 HXB2 reference strain gag sequence (K03455)"} 				 /*3*/ {"HXB2_vpr", "Use HIV-1 HXB2 reference strain vpr sequence (K03455)"} 				 /*4*/ {"HXB2_vif", "Use HIV-1 HXB2 reference strain vif sequence (K03455)"} 				 /*5*/ {"HXB2_vpu", "Use HIV-1 HXB2 reference strain vpu sequence (K03455)"} 				 /*6*/ {"HXB2_pr", "Use HIV-1 HXB2 reference strain protease sequence (K03455)"} 				 /*7*/ {"HXB2_rt", "Use HIV-1 HXB2 reference strain reverse transcriptase sequence (K03455)"} 				 /*8*/ {"HXB2_int", "Use HIV-1 HXB2 reference strain integrase sequence (K03455)"} 				 /*9*/ {"HXB2_rev", "Use HIV-1 HXB2 reference strain rev (exons 1 and 2)sequence (K03455)"} 				/*10*/ {"HXB2_tat", "Use HIV-1 HXB2 reference strain tat (exons 1 and 2) sequence (K03455)"} 				/*11*/ {"HXB2_prrt", "Use HIV-1 HXB2 reference strain protease+rt sequence (K03455)"} 				/*12*/ {"NL4_3prrt", "Use HIV-1 NL4-3 reference strain pr+rt sequence"} 				/*13*/ {"HXB2_pol",  "Use HIV-1 HXB2 reference strain pol (starting at pr) sequence (K03455)"}				  };RefSeqs = {};RefSeqs [0] = "ATGAGAGTGAAGGAGAAATATCAGCACTTGTGGAGATGGGGGTGGAGATGGGGCACCATGCTCCTTGGGATGTTGATGATCTGTAGTGCTACAGAAAAATTGTGGGTCACAGTCTATTATGGGGTACCTGTGTGGAAGGAAGCAACCACCACTCTATTTTGTGCATCAGATGCTAAAGCATATGATACAGAGGTACATAATGTTTGGGCCACACATGCCTGTGTACCCACAGACCCCAACCCACAAGAAGTAGTATTGGTAAATGTGACAGAAAATTTTAACATGTGGAAAAATGACATGGTAGAACAGATGCATGAGGATATAATCAGTTTATGGGATCAAAGCCTAAAGCCATGTGTAAAATTAACCCCACTCTGTGTTAGTTTAAAGTGCACTGATTTGAAGAATGATACTAATACCAATAGTAGTAGCGGGAGAATGATAATGGAGAAAGGAGAGATAAAAAACTGCTCTTTCAATATCAGCACAAGCATAAGAGGTAAGGTGCAGAAAGAATATGCATTTTTTTATAAACTTGATATAATACCAATAGATAATGATACTACCAGCTATAAGTTGACAAGTTGTAACACCTCAGTCATTACACAGGCCTGTCCAAAGGTATCCTTTGAGCCAATTCCCATACATTATTGTGCCCCGGCTGGTTTTGCGATTCTAAAATGTAATAATAAGACGTTCAATGGAACAGGACCATGTACAAATGTCAGCACAGTACAATGTACACATGGAATTAGGCCAGTAGTATCAACTCAACTGCTGTTAAATGGCAGTCTAGCAGAAGAAGAGGTAGTAATTAGATCTGTCAATTTCACGGACAATGCTAAAACCATAATAGTACAGCTGAACACATCTGTAGAAATTAATTGTACAAGACCCAACAACAATACAAGAAAAAGAATCCGTATCCAGAGAGGACCAGGGAGAGCATTTGTTACAATAGGAAAAATAGGAAATATGAGACAAGCACATTGTAACATTAGTAGAGCAAAATGGAATAACACTTTAAAACAGATAGCTAGCAAATTAAGAGAACAATTTGGAAATAATAAAACAATAATCTTTAAGCAATCCTCAGGAGGGGACCCAGAAATTGTAACGCACAGTTTTAATTGTGGAGGGGAATTTTTCTACTGTAATTCAACACAACTGTTTAATAGTACTTGGTTTAATAGTACTTGGAGTACTGAAGGGTCAAATAACACTGAAGGAAGTGACACAATCACCCTCCCATGCAGAATAAAACAAATTATAAACATGTGGCAGAAAGTAGGAAAAGCAATGTATGCCCCTCCCATCAGTGGACAAATTAGATGTTCATCAAATATTACAGGGCTGCTATTAACAAGAGATGGTGGTAATAGCAACAATGAGTCCGAGATCTTCAGACCTGGAGGAGGAGATATGAGGGACAATTGGAGAAGTGAATTATATAAATATAAAGTAGTAAAAATTGAACCATTAGGAGTAGCACCCACCAAGGCAAAGAGAAGAGTGGTGCAGAGAGAAAAAAGAGCAGTGGGAATAGGAGCTTTGTTCCTTGGGTTCTTGGGAGCAGCAGGAAGCACTATGGGCGCAGCCTCAATGACGCTGACGGTACAGGCCAGACAATTATTGTCTGGTATAGTGCAGCAGCAGAACAATTTGCTGAGGGCTATTGAGGCGCAACAGCATCTGTTGCAACTCACAGTCTGGGGCATCAAGCAGCTCCAGGCAAGAATCCTGGCTGTGGAAAGATACCTAAAGGATCAACAGCTCCTGGGGATTTGGGGTTGCTCTGGAAAACTCATTTGCACCACTGCTGTGCCTTGGAATGCTAGTTGGAGTAATAAATCTCTGGAACAGATTTGGAATCACACGACCTGGATGGAGTGGGACAGAGAAATTAACAATTACACAAGCTTAATACACTCCTTAATTGAAGAATCGCAAAACCAGCAAGAAAAGAATGAACAAGAATTATTGGAATTAGATAAATGGGCAAGTTTGTGGAATTGGTTTAACATAACAAATTGGCTGTGGTATATAAAATTATTCATAATGATAGTAGGAGGCTTGGTAGGTTTAAGAATAGTTTTTGCTGTACTTTCTATAGTGAATAGAGTTAGGCAGGGATATTCACCATTATCGTTTCAGACCCACCTCCCAACCCCGAGGGGACCCGACAGGCCCGAAGGAATAGAAGAAGAAGGTGGAGAGAGAGACAGAGACAGATCCATTCGATTGGTGAACGGATCCTTGGCACTTATCTGGGACGATCTGCGGAGCCTGTGCCTCTTCAGCTACCACCGCTTGAGAGACTTACTCTTGATTGTAACGAGGATTGTGGAACTTCTGGGACGCAGGGGGTGGGAAGCCCTCAAATATTGGTGGAATCTCCTACAGTATTGGAGTCAGGAACTAAAGAATAGTGCTGTTAGCTTGCTCAATGCCACAGCCATAGCAGTAGCTGAGGGGACAGATAGGGTTATAGAAGTAGTACAAGGAGCTTGTAGAGCTATTCGCCACATACCTAGAAGAATAAGACAGGGCTTGGAAAGGATTTTGCTA";RefSeqs [1] = "ATGGGTGGCAAGTGGTCAAAAAGTAGTGTGATTGGATGGCCTACTGTAAGGGAAAGAATGAGACGAGCTGAGCCAGCAGCAGATAGGGTGGGAGCAGCATCTCGAGACCTGGAAAAACATGGAGCAATCACAAGTAGCAATACAGCAGCTACCAATGCTGCTTGTGCCTGGCTAGAAGCACAAGAGGAGGAGGAGGTGGGTTTTCCAGTCACACCTCAGGTACCTTTAAGACCAATGACTTACAAGGCAGCTGTAGATCTTAGCCACTTTTTAAAAGAAAAGGGGGGACTGGAAGGGCTAATTCACTCCCAAAGAAGACAAGATATCCTTGATCTGTGGATCTACCACACACAAGGCTACTTCCCTGAT---CAGAACTACACACCAGGGCCAGGGGTCAGATATCCACTGACCTTTGGATGGTGCTACAAGCTAGTACCAGTTGAGCCAGATAAGATAGAAGAGGCCAATAAAGGAGAGAACACCAGCTTGTTACACCCTGTGAGCCTGCATGGGATGGATGACCCGGAGAGAGAAGTGTTAGAGTGGAGGTTTGACAGCCGCCTAGCATTTCATCACGTGGCCCGAGAGCTGCATCCGGAGTACTTCAAGAACTGC";RefSeqs [2] = "ATGGGTGCGAGAGCGTCAGTATTAAGCGGGGGAGAATTAGATCGATGGGAAAAAATTCGGTTAAGGCCAGGGGGAAAGAAAAAATATAAATTAAAACATATAGTATGGGCAAGCAGGGAGCTAGAACGATTCGCAGTTAATCCTGGCCTGTTAGAAACATCAGAAGGCTGTAGACAAATACTGGGACAGCTACAACCATCCCTTCAGACAGGATCAGAAGAACTTAGATCATTATATAATACAGTAGCAACCCTCTATTGTGTGCATCAAAGGATAGAGATAAAAGACACCAAGGAAGCTTTAGACAAGATAGAGGAAGAGCAAAACAAAAGTAAGAAAAAAGCACAGCAAGCAGCAGCTGACACAGGACACAGCAATCAGGTCAGCCAAAATTACCCTATAGTGCAGAACATCCAGGGGCAAATGGTACATCAGGCCATATCACCTAGAACTTTAAATGCATGGGTAAAAGTAGTAGAAGAGAAGGCTTTCAGCCCAGAAGTGATACCCATGTTTTCAGCATTATCAGAAGGAGCCACCCCACAAGATTTAAACACCATGCTAAACACAGTGGGGGGACATCAAGCAGCCATGCAAATGTTAAAAGAGACCATCAATGAGGAAGCTGCAGAATGGGATAGAGTGCATCCAGTGCATGCAGGGCCTATTGCACCAGGCCAGATGAGAGAACCAAGGGGAAGTGACATAGCAGGAACTACTAGTACCCTTCAGGAACAAATAGGATGGATGACAAATAATCCACCTATCCCAGTAGGAGAAATTTATAAAAGATGGATAATCCTGGGATTAAATAAAATAGTAAGAATGTATAGCCCTACCAGCATTCTGGACATAAGACAAGGACCAAAGGAACCCTTTAGAGACTATGTAGACCGGTTCTATAAAACTCTAAGAGCCGAGCAAGCTTCACAGGAGGTAAAAAATTGGATGACAGAAACCTTGTTGGTCCAAAATGCGAACCCAGATTGTAAGACTATTTTAAAAGCATTGGGACCAGCGGCTACACTAGAAGAAATGATGACAGCATGTCAGGGAGTAGGAGGACCCGGCCATAAGGCAAGAGTTTTGGCTGAAGCAATGAGCCAAGTAACAAATTCAGCTACCATAATGATGCAGAGAGGCAATTTTAGGAACCAAAGAAAGATTGTTAAGTGTTTCAATTGTGGCAAAGAAGGGCACACAGCCAGAAATTGCAGGGCCCCTAGGAAAAAGGGCTGTTGGAAATGTGGAAAGGAAGGACACCAAATGAAAGATTGTACTGAGAGACAGGCTAATTTTTTAGGGAAGATCTGGCCTTCCTACAAGGGAAGGCCAGGGAATTTTCTTCAGAGCAGACCAGAGCCAACAGCCCCACCAGAAGAGAGCTTCAGGTCTGGGGTAGAGACAACAACTCCCCCTCAGAAGCAGGAGCCGATAGACAAGGAACTGTATCCTTTAACTTCCCTCAGGTCACTCTTTGGCAACGACCCCTCGTCACAA";				  RefSeqs [3] = "ATGGAACAAGCCCCAGAAGACCAAGGGCCACAGAGGGAGCCACACAATGAATGGACACTAGAGCTTTTAGAGGAGCTTAAGAATGAAGCTGTTAGACATTTTCCTAGGATTTGGCTCCATGGCTTAGGGCAACATATCTATGAAACTTATGGGGATACTTGGGCAGGAGTGGAAGCCATAATAAGAATTCTGCAACAACTGCTGTTTATCCATTTTCAGAATTGGGTGTCGACATAGCAGAATAGGCGTTACTCGACAGAGGAGAGCAAGAAATGGAGCCAGTAGATCC";				  RefSeqs [4] = "ATGGAAAACAGATGGCAGGTGATGATTGTGTGGCAAGTAGACAGGATGAGGATTAGAACATGGAAAAGTTTAGTAAAACACCATATGTATGTTTCAGGGAAAGCTAGGGGATGGTTTTATAGACATCACTATGAAAGCCCTCATCCAAGAATAAGTTCAGAAGTACACATCCCACTAGGGGATGCTAGATTGGTAATAACAACATATTGGGGTCTGCATACAGGAGAAAGAGACTGGCATTTGGGTCAGGGAGTCTCCATAGAATGGAGGAAAAAGAGATATAGCACACAAGTAGACCCTGAACTAGCAGACCAACTAATTCATCTGTATTACTTTGACTGTTTTTCAGACTCTGCTATAAGAAAGGCCTTATTAGGACACATAGTTAGCCCTAGGTGTGAATATCAAGCAGGACATAACAAGGTAGGATCTCTACAATACTTGGCACTAGCAGCATTAATAACACCAAAAAAGATAAAGCCACCTTTGCCTAGTGTTACGAAACTGACAGAGGATAGATGGAACAAGCCCCAGAAGACCAAGGGCCACAGAGGGAGCCACACAATGAATGGACAC";				  RefSeqs [5] = "ACGCAACCTATACCAATAGTAGCAATAGTAGCATTAGTAGTAGCAATAATAATAGCAATAGTTGTGTGGTCCATAGTAATCATAGAATATAGGAAAATATTAAGACAAAGAAAAATAGACAGGTTAATTGATAGACTAATAGAAAGAGCAGAAGACAGTGGCAATGAGAGTGAAGGAGAAATATCAGCACTTGTGGAGATGGGGGTGGAGATGGGGCACCATGCTCCTTGGGATGTTGATGATC";				  RefSeqs [6] = "CCTCAGGTCACTCTTTGGCAACGACCCCTCGTCACAATAAAGATAGGGGGGCAACTAAAGGAAGCTCTATTAGATACAGGAGCAGATGATACAGTATTAGAAGAAATGAGTTTGCCAGGAAGATGGAAACCAAAAATGATAGGGGGAATTGGAGGTTTTATCAAAGTAAGACAGTATGATCAGATACTCATAGAAATCTGTGGACATAAAGCTATAGGTACAGTATTAGTAGGACCTACACCTGTCAACATAATTGGAAGAAATCTGTTGACTCAGATTGGTTGCACTTTAAATTTT";				  RefSeqs [7] = "CCCATTAGCCCTATTGAGACTGTACCAGTAAAATTAAAGCCAGGAATGGATGGCCCAAAAGTTAAACAATGGCCATTGACAGAAGAAAAAATAAAAGCATTAGTAGAAATTTGTACAGAGATGGAAAAGGAAGGGAAAATTTCAAAAATTGGGCCTGAAAATCCATACAATACTCCAGTATTTGCCATAAAGAAAAAAGACAGTACTAAATGGAGAAAATTAGTAGATTTCAGAGAACTTAATAAGAGAACTCAAGACTTCTGGGAAGTTCAATTAGGAATACCACATCCCGCAGGGTTAAAAAAGAAAAAATCAGTAACAGTACTGGATGTGGGTGATGCATATTTTTCAGTTCCCTTAGATGAAGACTTCAGGAAGTATACTGCATTTACCATACCTAGTATAAACAATGAGACACCAGGGATTAGATATCAGTACAATGTGCTTCCACAGGGATGGAAAGGATCACCAGCAATATTCCAAAGTAGCATGACAAAAATCTTAGAGCCTTTTAGAAAACAAAATCCAGACATAGTTATCTATCAATACATGGATGATTTGTATGTAGGATCTGACTTAGAAATAGGGCAGCATAGAACAAAAATAGAGGAGCTGAGACAACATCTGTTGAGGTGGGGACTTACCACACCAGACAAAAAACATCAGAAAGAACCTCCATTCCTTTGGATGGGTTATGAACTCCATCCTGATAAATGGACAGTACAGCCTATAGTGCTGCCAGAAAAAGACAGCTGGACTGTCAATGACATACAGAAGTTAGTGGGGAAATTGAATTGGGCAAGTCAGATTTACCCAGGGATTAAAGTAAGGCAATTATGTAAACTCCTTAGAGGAACCAAAGCACTAACAGAAGTAATACCACTAACAGAAGAAGCAGAGCTAGAACTGGCAGAAAACAGAGAGATTCTAAAAGAACCAGTACATGGAGTGTATTATGACCCATCAAAAGACTTAATAGCAGAAATACAGAAGCAGGGGCAAGGCCAATGGACATATCAAATTTATCAAGAGCCATTTAAAAATCTGAAAACAGGAAAATATGCAAGAATGAGGGGTGCCCACACTAATGATGTAAAACAATTAACAGAGGCAGTGCAAAAAATAACCACAGAAAGCATAGTAATATGGGGAAAGACTCCTAAATTTAAACTGCCCATACAAAAGGAAACATGGGAAACATGGTGGACAGAGTATTGGCAAGCCACCTGGATTCCTGAGTGGGAGTTTGTTAATACCCCTCCCTTAGTGAAATTATGGTACCAGTTAGAGAAAGAACCCATAGTAGGAGCAGAAACCTTC";				  RefSeqs [8] = "TTTTTAGATGGAATAGATAAGGCCCAAGATGAACATGAGAAATATCACAGTAATTGGAGAGCAATGGCTAGTGATTTTAACCTGCCACCTGTAGTAGCAAAAGAAATAGTAGCCAGCTGTGATAAATGTCAGCTAAAAGGAGAAGCCATGCATGGACAAGTAGACTGTAGTCCAGGAATATGGCAACTAGATTGTACACATTTAGAAGGAAAAGTTATCCTGGTAGCAGTTCATGTAGCCAGTGGATATATAGAAGCAGAAGTTATTCCAGCAGAAACAGGGCAGGAAACAGCATATTTTCTTTTAAAATTAGCAGGAAGATGGCCAGTAAAAACAATACATACTGACAATGGCAGCAATTTCACCGGTGCTACGGTTAGGGCCGCCTGTTGGTGGGCGGGAATCAAGCAGGAATTTGGAATTCCCTACAATCCCCAAAGTCAAGGAGTAGTAGAATCTATGAATAAAGAATTAAAGAAAATTATAGGACAGGTAAGAGATCAGGCTGAACATCTTAAGACAGCAGTACAAATGGCAGTATTCATCCACAATTTTAAAAGAAAAGGGGGGATTGGGGGGTACAGTGCAGGGGAAAGAATAGTAGACATAATAGCAACAGACATACAAACTAAAGAATTACAAAAACAAATTACAAAAATTCAAAATTTTCGGGTTTATTACAGGGACAGCAGAAATCCACTTTGGAAAGGACCAGCAAAGCTCCTCTGGAAAGGTGAAGGGGCAGTAGTAATACAAGATAATAGTGACATAAAAGTAGTGCCAAGAAGAAAAGCAAAGATCATTAGGGATTATGGAAAACAGATGGCAGGTGATGATTGTGTGGCAAGTAGACAGGATGAGGAT";RefSeqs [9] = "ATGGCAGGAAGAAGCGGAGACAGCGACGAAGAGCTCATCAGAACAGTCAGACTCATCAAGCTTCTCTAACCCACCTCCCAACCCCGAGGGGACCCGACAGGCCCGAAGGAATAGAAGAAGAAGGTGGAGAGAGAGACAGAGACAGATCCATTCGATTAGTGAACGGATCCTTGGCACTTATCTGGGACGATCTGCGGAGCCTGTGCCTCTTCAGCTACCACCGCTTGAGAGACTTACTCTTGATTGTAACGAGGATTGTGGAACTTCTGGGACGCAGGGGGTGGGAAGCCCTCAAATATTGGTGGAATCTCCTACAGTATTGGAGTCAGGAACTAAAGA";RefSeqs[10] = "ATGGAGCCAGTAGATCCTAGACTAGAGCCCTGGAAGCATCCAGGAAGTCAGCCTAAAACTGCTTGTACCAATTGCTATTGTAAAAAGTGTTGCTTTCATTGCCAAGTTTGTTTCATAACAAAAGCCTTAGGCATCTCCTATGGCAGGAAGAAGCGGAGACAGCGACGAAGAGCTCATCAGAACAGTCAGACTCATCAAGCTTCTCTATCAAAGCAACCCACCTCCCAACCCCGAGGGGACCCGACAGGCCCGAAGGAATAGAAGAAGAAGGTGGAGAGAGAGACAGAGACAGATCCATTCGAT";RefSeqs[11] = "CCTCAGGTCACTCTTTGGCAACGACCCCTCGTCACAATAAAGATAGGGGGGCAACTAAAGGAAGCTCTATTAGATACAGGAGCAGATGATACAGTATTAGAAGAAATGAGTTTGCCAGGAAGATGGAAACCAAAAATGATAGGGGGAATTGGAGGTTTTATCAAAGTAAGACAGTATGATCAGATACTCATAGAAATCTGTGGACATAAAGCTATAGGTACAGTATTAGTAGGACCTACACCTGTCAACATAATTGGAAGAAATCTGTTGACTCAGATTGGTTGCACTTTAAATTTTCCCATTAGCCCTATTGAGACTGTACCAGTAAAATTAAAGCCAGGAATGGATGGCCCAAAAGTTAAACAATGGCCATTGACAGAAGAAAAAATAAAAGCATTAGTAGAAATTTGTACAGAGATGGAAAAGGAAGGGAAAATTTCAAAAATTGGGCCTGAAAATCCATACAATACTCCAGTATTTGCCATAAAGAAAAAAGACAGTACTAAATGGAGAAAATTAGTAGATTTCAGAGAACTTAATAAGAGAACTCAAGACTTCTGGGAAGTTCAATTAGGAATACCACATCCCGCAGGGTTAAAAAAGAAAAAATCAGTAACAGTACTGGATGTGGGTGATGCATATTTTTCAGTTCCCTTAGATGAAGACTTCAGGAAGTATACTGCATTTACCATACCTAGTATAAACAATGAGACACCAGGGATTAGATATCAGTACAATGTGCTTCCACAGGGATGGAAAGGATCACCAGCAATATTCCAAAGTAGCATGACAAAAATCTTAGAGCCTTTTAGAAAACAAAATCCAGACATAGTTATCTATCAATACATGGATGATTTGTATGTAGGATCTGACTTAGAAATAGGGCAGCATAGAACAAAAATAGAGGAGCTGAGACAACATCTGTTGAGGTGGGGACTTACCACACCAGACAAAAAACATCAGAAAGAACCTCCATTCCTTTGGATGGGTTATGAACTCCATCCTGATAAATGGACAGTACAGCCTATAGTGCTGCCAGAAAAAGACAGCTGGACTGTCAATGACATACAGAAGTTAGTGGGGAAATTGAATTGGGCAAGTCAGATTTACCCAGGGATTAAAGTAAGGCAATTATGTAAACTCCTTAGAGGAACCAAAGCACTAACAGAAGTAATACCACTAACAGAAGAAGCAGAGCTAGAACTGGCAGAAAACAGAGAGATTCTAAAAGAACCAGTACATGGAGTGTATTATGACCCATCAAAAGACTTAATAGCAGAAATACAGAAGCAGGGGCAAGGCCAATGGACATATCAAATTTATCAAGAGCCATTTAAAAATCTGAAAACAGGAAAATATGCAAGAATGAGGGGTGCCCACACTAATGATGTAAAACAATTAACAGAGGCAGTGCAAAAAATAACCACAGAAAGCATAGTAATATGGGGAAAGACTCCTAAATTTAAACTGCCCATACAAAAGGAAACATGGGAAACATGGTGGACAGAGTATTGGCAAGCCACCTGGATTCCTGAGTGGGAGTTTGTTAATACCCCTCCCTTAGTGAAATTATGGTACCAGTTAGAGAAAGAACCCATAGTAGGAGCAGAAACCTTC";RefSeqs[12] = "CCTCAGATCACTCTTTGGCAGCGACCCCTCGTCACAATAAAGATAGGGGGGCAATTAAAGGAAGCTCTATTAGATACAGGAGCAGATGATACAGTATTAGAAGAAATGAATTTGCCAGGAAGATGGAAACCAAAAATGATAGGGGGAATTGGAGGTTTTATCAAAGTAGGACAGTATGATCAGATACTCATAGAAATCTGCGGACATAAAGCTATAGGTACAGTATTAGTAGGACCTACACCTGTCAACATAATTGGAAGAAATCTGTTGACTCAGATTGGCTGCACTTTAAATTTTCCCATTAGTCCTATTGAGACTGTACCAGTAAAATTAAAGCCAGGAATGGATGGCCCAAAAGTTAAACAATGGCCATTGACAGAAGAAAAAATAAAAGCATTAGTAGAAATTTGTACAGAAATGGAAAAGGAAGGAAAAATTTCAAAAATTGGGCCTGAAAATCCATACAATACTCCAGTATTTGCCATAAAGAAAAAAGACAGTACTAAATGGAGAAAATTAGTAGATTTCAGAGAACTTAATAAGAGAACTCAAGATTTCTGGGAAGTTCAATTAGGAATACCACATCCTGCAGGGTTAAAACAGAAAAAATCAGTAACAGTACTGGATGTGGGCGATGCATATTTTTCAGTTCCCTTAGATAAAGACTTCAGGAAGTATACTGCATTTACCATACCTAGTATAAACAATGAGACACCAGGGATTAGATATCAGTACAATGTGCTTCCACAGGGATGGAAAGGATCACCAGCAATATTCCAGTGTAGCATGACAAAAATCTTAGAGCCTTTTAGAAAACAAAATCCAGACATAGTCATCTATCAATACATGGATGATTTGTATGTAGGATCTGACTTAGAAATAGGGCAGCATAGAACAAAAATAGAGGAACTGAGACAACATCTGTTGAGGTGGGGATTTACCACACCAGACAAAAAACATCAGAAAGAACCTCCATTCCTTTGGATGGGTTATGAACTCCATCCTGATAAATGGACAGTACAGCCTATAGTGCTGCCAGAAAAGGACAGCTGGACTGTCAATGACATACAGAAATTAGTGGGAAAATTGAATTGGGCAAGTCAGATTTATGCAGGGATTAAAGTAAGGCAATTATGTAAACTTCTTAGGGGAACCAAAGCACTAACAGAAGTAGTACCACTAACAGAAGAAGCAGAGCTAGAACTGGCAGAAAACAGGGAGATTCTAAAAGAACCGGTACATGGAGTGTATTATGACCCATCAAAAGACTTAATAGCAGAAATACAGAAGCAGGGGCAAGGCCAATGGACATATCAAATTTATCAAGAGCCATTTAAAAATCTGAAAACAGGAAAATATGCAAGAATGAAGGGTGCCCACACTAATGATGTGAAACAATTAACAGAGGCAGTACAAAAAATAGCCACAGAAAGCATAGTAATATGGGGAAAGACTCCTAAATTTAAATTACCCATACAAAAGGAAACATGGGAAGCATGGTGGACAGAGTATTGGCAAGCCACCTGGATTCCTGAGTGGGAGTTTGTCAATACCCCTCCCTTAGTGAAGTTATGGTACCAGTTAGAGAAAGAACCCATAATAGGAGCAGAAACTTTC";RefSeqs[13] = "CCTCAGGTCACTCTTTGGCAACGACCCCTCGTCACAATAAAGATAGGGGGGCAACTAAAGGAAGCTCTATTAGATACAGGAGCAGATGATACAGTATTAGAAGAAATGAGTTTGCCAGGAAGATGGAAACCAAAAATGATAGGGGGAATTGGAGGTTTTATCAAAGTAAGACAGTATGATCAGATACTCATAGAAATCTGTGGACATAAAGCTATAGGTACAGTATTAGTAGGACCTACACCTGTCAACATAATTGGAAGAAATCTGTTGACTCAGATTGGTTGCACTTTAAATTTTCCCATTAGCCCTATTGAGACTGTACCAGTAAAATTAAAGCCAGGAATGGATGGCCCAAAAGTTAAACAATGGCCATTGACAGAAGAAAAAATAAAAGCATTAGTAGAAATTTGTACAGAGATGGAAAAGGAAGGGAAAATTTCAAAAATTGGGCCTGAAAATCCATACAATACTCCAGTATTTGCCATAAAGAAAAAAGACAGTACTAAATGGAGAAAATTAGTAGATTTCAGAGAACTTAATAAGAGAACTCAAGACTTCTGGGAAGTTCAATTAGGAATACCACATCCCGCAGGGTTAAAAAAGAAAAAATCAGTAACAGTACTGGATGTGGGTGATGCATATTTTTCAGTTCCCTTAGATGAAGACTTCAGGAAGTATACTGCATTTACCATACCTAGTATAAACAATGAGACACCAGGGATTAGATATCAGTACAATGTGCTTCCACAGGGATGGAAAGGATCACCAGCAATATTCCAAAGTAGCATGACAAAAATCTTAGAGCCTTTTAGAAAACAAAATCCAGACATAGTTATCTATCAATACATGGATGATTTGTATGTAGGATCTGACTTAGAAATAGGGCAGCATAGAACAAAAATAGAGGAGCTGAGACAACATCTGTTGAGGTGGGGACTTACCACACCAGACAAAAAACATCAGAAAGAACCTCCATTCCTTTGGATGGGTTATGAACTCCATCCTGATAAATGGACAGTACAGCCTATAGTGCTGCCAGAAAAAGACAGCTGGACTGTCAATGACATACAGAAGTTAGTGGGGAAATTGAATTGGGCAAGTCAGATTTACCCAGGGATTAAAGTAAGGCAATTATGTAAACTCCTTAGAGGAACCAAAGCACTAACAGAAGTAATACCACTAACAGAAGAAGCAGAGCTAGAACTGGCAGAAAACAGAGAGATTCTAAAAGAACCAGTACATGGAGTGTATTATGACCCATCAAAAGACTTAATAGCAGAAATACAGAAGCAGGGGCAAGGCCAATGGACATATCAAATTTATCAAGAGCCATTTAAAAATCTGAAAACAGGAAAATATGCAAGAATGAGGGGTGCCCACACTAATGATGTAAAACAATTAACAGAGGCAGTGCAAAAAATAACCACAGAAAGCATAGTAATATGGGGAAAGACTCCTAAATTTAAACTGCCCATACAAAAGGAAACATGGGAAACATGGTGGACAGAGTATTGGCAAGCCACCTGGATTCCTGAGTGGGAGTTTGTTAATACCCCTCCCTTAGTGAAATTATGGTACCAGTTAGAGAAAGAACCCATAGTAGGAGCAGAAACCTTCTATGTAGATGGGGCAGCTAACAGGGAGACTAAATTAGGAAAAGCAGGATATGTTACTAATAGAGGAAGACAAAAAGTTGTCACCCTAACTGACACAACAAATCAGAAGACTGAGTTACAAGCAATTTATCTAGCTTTGCAGGATTCGGGATTAGAAGTAAACATAGTAACAGACTCACAATATGCATTAGGAATCATTCAAGCACAACCAGATCAAAGTGAATCAGAGTTAGTCAATCAAATAATAGAGCAGTTAATAAAAAAGGAAAAGGTCTATCTGGCATGGGTACCAGCACACAAAGGAATTGGAGGAAATGAACAAGTAGATAAATTAGTCAGTGCTGGAATCAGGAAAGTACTATTTTTAGATGGAATAGATAAGGCCCAAGATGAACATGAGAAATATCACAGTAATTGGAGAGCAATGGCTAGTGATTTTAACCTGCCACCTGTAGTAGCAAAAGAAATAGTAGCCAGCTGTGATAAATGTCAGCTAAAAGGAGAAGCCATGCATGGACAAGTAGACTGTAGTCCAGGAATATGGCAACTAGATTGTACACATTTAGAAGGAAAAGTTATCCTGGTAGCAGTTCATGTAGCCAGTGGATATATAGAAGCAGAAGTTATTCCAGCAGAAACAGGGCAGGAAACAGCATATTTTCTTTTAAAATTAGCAGGAAGATGGCCAGTAAAAACAATACATACTGACAATGGCAGCAATTTCACCGGTGCTACGGTTAGGGCCGCCTGTTGGTGGGCGGGAATCAAGCAGGAATTTGGAATTCCCTACAATCCCCAAAGTCAAGGAGTAGTAGAATCTATGAATAAAGAATTAAAGAAAATTATAGGACAGGTAAGAGATCAGGCTGAACATCTTAAGACAGCAGTACAAATGGCAGTATTCATCCACAATTTTAAAAGAAAAGGGGGGATTGGGGGGTACAGTGCAGGGGAAAGAATAGTAGACATAATAGCAACAGACATACAAACTAAAGAATTACAAAAACAAATTACAAAAATTCAAAATTTTCGGGTTTATTACAGGGACAGCAGAAATCCACTTTGGAAAGGACCAGCAAAGCTCCTCTGGAAAGGTGAAGGGGCAGTAGTAATACAAGATAATAGTGACATAAAAGTAGTGCCAAGAAGAAAAGCAAAGATCATTAGGGATTATGGAAAACAGATGGCAGGTGATGATTGTGTGGCAAGTAGACAGGATGAGGATTAG";ChoiceList (refSeq,"Choose a reference sequence",1,SKIP_NONE,predefSeqNames);if (refSeq < 0){	return 0;}SetDialogPrompt ("Sequence File:");if (refSeq > 0){	DataSet        unal2 			= ReadDataFile 	(PROMPT_FOR_FILE);	refSeq = ">" + predefSeqNames [refSeq][0] + "\n" + RefSeqs[refSeq-1];	DataSet		   refD = ReadFromString (refSeq);	DataSet        unal = Combine (refD,unal2);}else{		ChoiceList (refSeq2,"Insert a coordinate reference sequence?",1,SKIP_NONE,predefSeqNames2);	if (refSeq2 < 0)	{		return 0;	}	if (refSeq2)	{		DataSet        unal2 			= ReadDataFile 	(PROMPT_FOR_FILE);		refSeq = ">" + predefSeqNames [refSeq2][0] + "\n" + RefSeqs[refSeq2-1];		DataSet		   refD = ReadFromString (refSeq);		DataSet        unal = Combine (unal2,refD);	}	else	{		DataSet        unal 			= ReadDataFile 	(PROMPT_FOR_FILE);	}}ChoiceList (doRC,"Try reverse complements?",1,SKIP_NONE,"No","Only align in the provided direction","Yes","Try both each sequences and its reverse complement.");if (doRC < 0){	return 0;}DataSetFilter  filteredData 	= CreateFilter	(unal,1);#include "Utility/NJ.bf";#include "Utility/GrabBag.bf";COUNT_GAPS_IN_FREQUENCIES = 0;InitializeDistances(0);GetInformation (UnalignedSeqs,filteredData);seqCount = Rows(UnalignedSeqs) * Columns(UnalignedSeqs);/* preprocess sequences */for (seqCounter = 0; seqCounter < seqCount; seqCounter = seqCounter+1){	aSeq = UnalignedSeqs[seqCounter];	/*for (siteCounter = Abs(aSeq)-1; siteCounter>0; siteCounter=siteCounter-1)	{		if (aSeq[siteCounter]!="?")		{			break;		}	}	UnalignedSeqs[seqCounter] = aSeq[0][siteCounter];*/	UnalignedSeqs[seqCounter] = aSeq^{{"[^a-zA-Z]",""}};	UnalignedSeqs[seqCounter] = UnalignedSeqs[seqCounter]^{{"^N+",""}};	UnalignedSeqs[seqCounter] = UnalignedSeqs[seqCounter]^{{"N+$",""}};}SeqAlignments 	 = {};startingPosition = {seqCount,2};refLength 		 = Abs(UnalignedSeqs[0]);refInsertions	 = {refLength,1};s1 = UnalignedSeqs[0];fprintf (stdout,"\nPerforming pairwise alignment with reference sequences\n");pairwiseDistances = {seqCount,1};for (seqCounter = 1; seqCounter < seqCount; seqCounter = seqCounter+1){	s2 			 = UnalignedSeqs[seqCounter];	inStr 		 = {{s1,s2}};	AlignSequences(aligned, inStr, alignOptions);		if (doRC)	{		s2c = nucleotideReverseComplement (s2);		inStr 		 = {{s1,s2c}};		AlignSequences(aligned_rc, inStr, alignOptions);		if ((aligned_rc[0])[0] > (aligned[0])[0])		{			UnalignedSeqs[seqCounter] = s2c;			aligned = aligned_rc;		}	}		aligned = aligned[0];	SeqAlignments[seqCounter] = aligned;	aligned = aligned[1];		myStartingPosition = aligned$"[^-]";	myEndingPosition  = Abs (aligned)-1;	while (aligned[myEndingPosition]=="-")	{		myEndingPosition = myEndingPosition - 1;	}	myStartingPosition = myStartingPosition[0];	startingPosition[seqCounter][0] = myStartingPosition;	startingPosition[seqCounter][1] = myEndingPosition;	aligned = aligned[myStartingPosition][myEndingPosition];	cleanedAlignedSeq = ((SeqAlignments[seqCounter])[2])[myStartingPosition][myEndingPosition]^{{"N","-"}};	pairOfSequences = ">1\n" + cleanedAlignedSeq + "\n>2\n" + aligned;	DataSet 	  twoDS 			= ReadFromString (pairOfSequences);	DataSetFilter filteredData	    = CreateFilter (twoDS,1);	pairwiseDistances[seqCounter-1] = ComputeDistanceFormula (0,1);	refInsert = aligned||"-+";	if (refInsert[0]>0)	{		insCount = Rows (refInsert)/2;		offset = 0;		for (insN = 0; insN < insCount; insN = insN+1)		{			insPos 		= refInsert[insN*2];			insLength	= refInsert[insN*2+1]-insPos+1;			insPos 		= insPos-offset;			if (refInsertions[insPos]<insLength)			{				refInsertions[insPos]=insLength;			}			offset = offset + insLength;		}	}	SetParameter (STATUS_BAR_STATUS_STRING, "Performing pairwise alignment with reference sequences ("+seqCounter+"/"+seqCount+" done)",0);}/* produce a fully gapped reference sequence */fprintf (stdout,"\nMerging pairwise alignments into a MSA\n");fullRefSeq = "";fullRefSeq * refLength;fullRefSeq * (s1[0]);for (seqCounter=1;seqCounter<refLength;seqCounter=seqCounter+1){	gapCount = refInsertions[seqCounter];	for (k=0; k<gapCount;k=k+1)	{		fullRefSeq*("-");	}		fullRefSeq  * (s1[seqCounter]);}fullRefSeq * 0;refLength = Abs(fullRefSeq);SetDialogPrompt ("Save alignment to:");GetString (seqName,unal,0);fprintf (PROMPT_FOR_FILE,CLEAR_FILE,">",seqName,"\n",fullRefSeq);fName = LAST_FILE_PATH;for (seqCounter = 1; seqCounter < seqCount; seqCounter = seqCounter+1){	GetString (seqName,unal,seqCounter);	aligned = SeqAlignments[seqCounter];		aligned1 = aligned[1];	aligned2 = aligned[2];		s2 = startingPosition[seqCounter][0];	e2 = startingPosition[seqCounter][1];		gappedSeq = "";	gappedSeq * Abs(aligned2);		k=0;		while (k<refLength)	{		while (fullRefSeq[k]!=aligned1[s2])		{			gappedSeq*("-");			k=k+1;		}		gappedSeq*(aligned2[s2]);		s2=s2+1;		k=k+1;	}	gappedSeq * 0;	if (refSeq2 && seqCounter == seqCount-1)	{		fscanf (fName, "Raw", soFar);		fprintf (fName, CLEAR_FILE,">",seqName,"\n",gappedSeq,"\n",soFar);			}	else	{		fprintf (fName,"\n>",seqName,"\n",gappedSeq);	}}