
/* abc */      
logic [31:0] test_array1[0:15]  =  '{ 32'h61628000,   
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000000,
                                      32'h00000010 };
                                       

logic [31:0] expected_result1[0:7]  =  '{ 32'hBA7816BF,
                                          32'h8F01CFEA,
                                          32'h414140DE,
                                          32'h5DAE2223,
                                          32'hB00361A3,
                                          32'h96177A9C,
                                          32'hB410FF61,
                                          32'hF20015AD };
                                                                    
logic [31:0] msg_sched_expected[63:0] = '{                               
 32'h12b1edeb, 32'heeaba2cc, 32'h668b2ff8, 32'ha43fcf15, 32'h78bc8d4b, 32'h9fe3095e, 32'hebe6b238, 32'hef57b9cd, 
 32'hb20f7a99, 32'h1487472c, 32'hc21462bc, 32'h84badedd, 32'ha9993667, 32'hb9e66c34, 32'hcc7617db, 32'hfb3e89cb, 
 32'h065c43da, 32'h7a290d5d, 32'h840abf27, 32'h0c4763f2, 32'h27333ba3, 32'h3e246a79, 32'hf0a64f5a, 32'h9f47bf94, 
 32'h24641522, 32'h9409e33e, 32'h72af830a, 32'h0a8b3996, 32'hf10a5c62, 32'haff4ffc1, 32'h3b68ba73, 32'h93f5997f, 
 32'hd3b7973b, 32'h702138a4, 32'hec8726cb, 32'h9d209d67, 32'h32663c5b, 32'he5bc3909, 32'hb73679a2, 32'hc8215c1a, 
 32'he2e2c38e, 32'h12dcbfdb, 32'h0183fc00, 32'h3e9d7b78, 32'h600003c6, 32'h7da86405, 32'h000f0000, 32'h61626380, 
 32'h00000018, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 
 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h00000000, 32'h61626380}; 
                               
logic [31:0] EXP_T1 [0:63]         = '{
32'h54da50e8 , 32'h3c5f8617 , 32'h3dc18b66 , 32'hbad621e9 , 32'he642b678 , 32'h16d78700 , 32'hd2645c5a , 32'h37148413 ,
32'h2e899322 , 32'hf1871ba1 , 32'h5e682068 , 32'hfbcf5b8a , 32'h9052955f , 32'he7d31473 , 32'hc3fa4e18 , 32'h10394824 ,
32'hf8a2f90c , 32'hab3bf93e , 32'h0c253983 , 32'hff695deb , 32'h68ffee95 , 32'h1e299f9f , 32'h4b7d958b , 32'hc855b714 , 
32'h8a5d642e , 32'h51d7d021 , 32'h1fa902d7 , 32'h282a826b , 32'h44e67b7f , 32'hdfff90ba , 32'h4adae67e , 32'h42859bea , 
32'h66a5732d , 32'hb91e92a3 , 32'h1dc60e11 , 32'h80fcc6e1 , 32'h6e917d64 , 32'ha6a75748 , 32'h46d0a83c , 32'hb95af0bc , 
32'he48ed0b2 , 32'h4eac110d , 32'h7107cc8b , 32'h83b7e3b4 , 32'hd1a80a8a , 32'hd82ef872 , 32'hbdd186ab , 32'h61835c33 , 
32'h970eb823 , 32'hfbb0ed7b , 32'hb1a5b847 , 32'h07b0e991 , 32'h4d290015 , 32'hae2b8d1b , 32'h6b0912ae , 32'hcc5cac49 , 
32'h8b3ebddd , 32'h88d3d0b3 , 32'h2ebf62eb , 32'h794f142a , 32'h994dc019 , 32'hd42a5147 , 32'hfb5b0d9e , 32'ha8467f25  }; 

logic [31:0] EXP_T2_ROR_A_22[0:63] = '{
32'h27999da8 , 32'habaf3575 , 32'hab66b569 , 32'h0d1e9f23 , 32'h43d99b55 , 32'h0269a811 , 32'h0827d4ad , 32'h0c0e0394 ,
32'h81ed7e16 , 32'h13b2e638 , 32'h1cd1ae32 , 32'h628fd11e , 32'h7f16a7dc , 32'h44a6421e , 32'hcbac5b64 , 32'h917f7b01 ,
32'he88e3ac3 , 32'h6a6a6c87 , 32'hef67470b , 32'hddeefff9 , 32'hc830cf87 , 32'h1a2d8e77 , 32'h81b5b709 , 32'h8d88fe9e ,
32'h54f63717 , 32'hb0a0e070 , 32'ha00df737 , 32'hbb12f2d8 , 32'h4dd4a1df , 32'hd20b24d8 , 32'h182cc280 , 32'h64a88baa ,
32'hccefd5ce , 32'h84941e63 , 32'h8137d7f9 , 32'h9dce32a6 , 32'h833f9196 , 32'h9972c506 , 32'h7c5810d3 , 32'h15ea29b7 ,
32'ha9a1e9e7 , 32'h9c1d9b59 , 32'h1994bf7d , 32'ha837f85e , 32'h2ebe4e75 , 32'h8a205499 , 32'had2e45ca , 32'h3052c285 ,
32'hc8ca3505 , 32'hd5f3ac15 , 32'h6feaa3c4 , 32'h142285e8 , 32'hb9e88a21 , 32'h7f4a3c40 , 32'hc0bf6fd5 , 32'h11736cfb ,
32'h32644ce3 , 32'h4621eff3 , 32'h8b51bf01 , 32'hdc11cbfe , 32'hba3ffeda , 32'h78b3a6e1 , 32'h4935b013 , 32'h6885974e   }; 


logic [31:0] EXP_T1_EFG [0:63]     = '{
32'h1f85c98c , 32'h510f6aae , 32'h790a4276 , 32'h7a0a7f89 , 32'h782e79c9 , 32'hb8a019ea , 32'h45a02855 , 32'h518a2245 ,
32'h79272085 , 32'h8965a809 , 32'h10ec7fed , 32'h30c92d84 , 32'h1deb23fe , 32'h416fa3e8 , 32'h95779639 , 32'h1457401c ,
32'h7312401e , 32'h0b92d08c , 32'h8335299d , 32'h843ca2dc , 32'h840de565 , 32'hc4439171 , 32'h90428939 , 32'hc32f9970 ,
32'h49653972 , 32'h69d7d34b , 32'haa67efc1 , 32'h2c2baf87 , 32'hd54c2516 , 32'he75ee7b0 , 32'h611aabff , 32'h611380b7 ,
32'h05af8537 , 32'h99591b1a , 32'hba5995d2 , 32'h9c84ddd7 , 32'h09149d13 , 32'h0c3d1a52 , 32'h55b2a2eb , 32'ha702a12b ,
32'hb17c259d , 32'hd67912a8 , 32'h1e71e5a1 , 32'ha2b92f73 , 32'hde896715 , 32'hfec24625 , 32'he88711ae , 32'hbd7515f1 ,
32'hd57b54a1 , 32'hfc4b9481 , 32'hbcd302ca , 32'hef50080c , 32'h667d2d16 , 32'h40639cf7 , 32'h52261d1c , 32'h97966743 ,
32'hcf0e83cb , 32'h744a0b6b , 32'h1acf266d , 32'hfe5c00ae , 32'h6c47ad86 , 32'hfb9bbf56 , 32'hb61f889d , 32'h940d4894   }; 


logic [31:0] EXP_T1_ROR [0:63]     = '{
32'h3587272b , 32'h5a94fd2d , 32'h73f0e495 , 32'h0607743c , 32'h3a933432 , 32'h8b77e19c , 32'h015b7776 , 32'h158dfaa9 ,
32'h99ad25c0 , 32'he45bb7ea , 32'h8e2276bc , 32'h699435ca , 32'hccdee661 , 32'h08bb98f7 , 32'h4f3b8d50 , 32'hb8d63f93 ,
32'h213b6995 , 32'h3b81984e , 32'heff31c0f , 32'hefc707b0 , 32'hf8373ead , 32'h897ea930 , 32'h7f24093a , 32'hfae64fc3 ,
32'h55bdf420 , 32'ha7724357 , 32'h958ca0fb , 32'h5ff7537b , 32'he375bd7e , 32'h2239b36a , 32'hab883974 , 32'h0b919a99 ,
32'h4436a63b , 32'h085a07a7 , 32'h65415f48 , 32'he5dc6e83 , 32'h590d3d71 , 32'h582c115e , 32'hd2f220b2 , 32'h66d20b14 ,
32'he9986075 , 32'h3a6aa383 , 32'h61add539 , 32'hd363665b , 32'hef0f2a07 , 32'hfb3dc5f1 , 32'h8845eb06 , 32'h8fa515ca ,
32'h04a106b1 , 32'h5d427776 , 32'h3e283d54 , 32'h3b47e2a3 , 32'h6b63a737 , 32'hee7eaa12 , 32'h55cd1720 , 32'hd1653e5c ,
32'h05aa8057 , 32'h10b627de , 32'h0a369fbd , 32'h20a45dbe , 32'h5ca8b318 , 32'h4f6ef480 , 32'h2a127e78 , 32'h88fa2277   }; 


logic [31:0] EXP_T1_ROR_E_6 [0:63] = '{
32'hfd443949 , 32'h8be8a918 , 32'h25e339e6 , 32'hafe4a4e7 , 32'h40938021 , 32'h150eb689 , 32'hb5c50982 , 32'h066c9e90 ,
32'he43195e9 , 32'h30cb28b6 , 32'h58732496 , 32'ha10dac8f , 32'ha605bf5b , 32'h60795e08 , 32'h79d16923 , 32'h302e4bc8 ,
32'h341d6437 , 32'h7200d08a , 32'h5211bb91 , 32'h87322665 , 32'he6c18e05 , 32'hc22b6a24 , 32'hc38495e5 , 32'h2927d445 ,
32'h1ea91f0d , 32'h44a08fbe , 32'h3850e0f6 , 32'h5b1d3194 , 32'he3b7feff , 32'hdd844a8e , 32'hdeb79e50 , 32'he80426ac ,
32'h4ae96444 , 32'hda7367d7 , 32'h4d649277 , 32'hcc217ce0 , 32'h5bd2c00b , 32'hac1dca89 , 32'hf6941e94 , 32'h23c1e06f ,
32'h807bef02 , 32'h8c98d4b5 , 32'h460e2c9c , 32'h577b351c , 32'hbbf68930 , 32'hc2a03c47 , 32'h86ddd576 , 32'ha755ee52 ,
32'h1bfb3c2f , 32'he2f5c500 , 32'h31b970e4 , 32'hdd4bc733 , 32'h79248c70 , 32'h014a79f4 , 32'h0e7d1e1f , 32'h3f94386d ,
32'had532c99 , 32'hb26d7a41 , 32'h39f91002 , 32'h19b60eff , 32'hf6c86eb4 , 32'h52587d22 , 32'hda523496 , 32'h43ec4848   }; 


logic [31:0] EXP_T1_ROR_E_11[0:63] = '{
32'h4fea21ca , 32'hc45f4548 , 32'h312f19cf , 32'h3d7f2527 , 32'h0a049c01 , 32'h48a875b4 , 32'h15ae284c , 32'h803364f4 ,
32'h4f218caf , 32'hb1865945 , 32'hb2c39924 , 32'h7d086d64 , 32'hdd302dfa , 32'h4303caf0 , 32'h1bce8b49 , 32'h4181725e ,
32'hb9a0eb21 , 32'h53900684 , 32'h8a908ddc , 32'h2c399133 , 32'h2f360c70 , 32'h26115b51 , 32'h2e1c24af , 32'h29493ea2 ,
32'h68f548f8 , 32'hf225047d , 32'hb1c28707 , 32'ha2d8e98c , 32'hff1dbff7 , 32'h76ec2254 , 32'h86f5bcf2 , 32'h67402135 ,
32'h22574b22 , 32'hbed39b3e , 32'hba6b2493 , 32'h06610be7 , 32'h5ade9600 , 32'h4d60ee54 , 32'ha7b4a0f4 , 32'h791e0f03 ,
32'h1403df78 , 32'hac64c6a5 , 32'he2307164 , 32'he2bbd9a8 , 32'h85dfb449 , 32'h3e1501e2 , 32'hb436eeab , 32'h953aaf72 ,
32'h78dfd9e1 , 32'h0717ae28 , 32'h218dcb87 , 32'h9eea5e39 , 32'h83c92463 , 32'ha00a53cf , 32'hf873e8f0 , 32'h69fca1c3 ,
32'hcd6a9964 , 32'h0d936bd2 , 32'h11cfc880 , 32'hf8cdb077 , 32'ha7b64375 , 32'h1292c3e9 , 32'hb6d291a4 , 32'h421f6242   }; 

logic [31:0] EXP_T1_ROR_E_25[0:63] = '{
32'h87293fa8 , 32'h1523117d , 32'h673cc4bc , 32'h949cf5fc , 32'h70042812 , 32'hd6d122a1 , 32'ha13056b8 , 32'h93d200cd ,
32'h32bd3c86 , 32'h6516c619 , 32'h6492cb0e , 32'hb591f421 , 32'hb7eb74c0 , 32'h2bc10c0f , 32'h2d246f3a , 32'hc9790605 ,
32'hac86e683 , 32'h1a114e40 , 32'h37722a42 , 32'h44ccb0e6 , 32'h31c0bcd8 , 32'h6d449845 , 32'h92bcb870 , 32'hfa88a524 ,
32'h23e1a3d5 , 32'h11f7c894 , 32'h1c1ec70a , 32'ha6328b63 , 32'hffdffc76 , 32'h8951dbb0 , 32'hf3ca1bd6 , 32'h84d59d00 ,
32'h2c88895d , 32'h6cfafb4e , 32'h924ee9ac , 32'h2f9c1984 , 32'h58016b7a , 32'hb9513583 , 32'h83d29ed2 , 32'h3c0de478 ,
32'h7de0500f , 32'h1a96b193 , 32'hc59388c1 , 32'h66a38aef , 32'hd126177e , 32'h0788f854 , 32'hbaaed0db , 32'hbdca54ea ,
32'h6785e37f , 32'hb8a01c5e , 32'h2e1c8637 , 32'h78e67ba9 , 32'h918e0f24 , 32'h4f3e8029 , 32'ha3c3e1cf , 32'h870da7f2 ,
32'h659335aa , 32'haf48364d , 32'h2200473f , 32'hc1dfe336 , 32'h0dd69ed9 , 32'h0fa44a4b , 32'h4692db4a , 32'h8909087d   }; 

logic [31:0] EXP_T2[0:63]          = '{
32'h08909ae5 , 32'h1e0b5396 , 32'h8b01bc41 , 32'h1a7ad47d , 32'h1dfde3f2 , 32'h146a82f5 , 32'h129ea726 , 32'h4e8bf74c ,
32'h5f7b5997 , 32'h9b0018ca , 32'he930838c , 32'hfb506a1f , 32'hf73e9431 , 32'hf15fd6a3 , 32'hfc6a11c6 , 32'ha0c0db6a ,
32'h2937a18f , 32'h17bfe093 , 32'hf252423c , 32'he288ae48 , 32'h34c69cce , 32'ha436cdce , 32'h5c25ccb4 , 32'hfd7f8679 ,
32'h91cec40a , 32'h7c10335c , 32'h9685c1e5 , 32'h4fa8f2bd , 32'hf14e074a , 32'hc0067a76 , 32'h9fbe43a4 , 32'h312da00b ,
32'h323bb1da , 32'h4541bb52 , 32'h8be1657b , 32'he4a40903 , 32'hd314df4d , 32'h8e37bebc , 32'h26f4d24e , 32'hc08f77be ,
32'hf1d836b4 , 32'h909a5422 , 32'ha6a24173 , 32'h1993cbdf , 32'h54ba7d8b , 32'h9a7c531f , 32'he37a8e05 , 32'hdfeed65a ,
32'h6e66c4c8 , 32'hf56b0d2d , 32'hc85f505a , 32'h80bd9091 , 32'hc2f6d27a , 32'h4744a2c0 , 32'hd3bb4a2d , 32'h6c6fecca ,
32'h7192ca9e , 32'h378f03bc , 32'hd0f7a187 , 32'h3d5f7bd5 , 32'h1f106cd0 , 32'h30a7fc25 , 32'hd83f13c7 , 32'ha827b133   }; 

logic [31:0] EXP_T2_ABC[0:63]      = '{
32'h3a6fe667 , 32'h7b6beec5 , 32'h5a6aebed , 32'h586acbad , 32'hd842d7a7 , 32'hc440d666 , 32'h05409a66 , 32'h25420be0 ,
32'ha5020bd5 , 32'h85006b99 , 32'h8c847c7b , 32'h8e84a4f9 , 32'hc79fa5e9 , 32'hc799a1b0 , 32'hd713e990 , 32'hc1306b96 ,
32'hd0726b9e , 32'ha0fa1b9e , 32'ha0fa9b9b , 32'he2fbdb9b , 32'he2f359b3 , 32'hfdf60b33 , 32'hc1e20d63 , 32'h87e26b6f ,
32'hc7e16d2d , 32'h85a5283d , 32'hcdec293d , 32'h9c2c003c , 32'hf7ea453c , 32'h3636c4a8 , 32'h36160328 , 32'ha2140a20 ,
32'he2932b30 , 32'hfab12b27 , 32'hfae12df5 , 32'hb8e16585 , 32'heda04fe4 , 32'h61a65fa4 , 32'h65a65ea4 , 32'h65c75e80 ,
32'h7dcf7a0a , 32'h7de76a6a , 32'hdf66656e , 32'hd766056e , 32'h9f4a2dbf , 32'h176a8d97 , 32'h366b8b91 , 32'h226a0891 ,
32'h616a1291 , 32'h017434a9 , 32'h41737aa9 , 32'h711578a9 , 32'hf80f7aa0 , 32'h180f5aa3 , 32'h907e7a8b , 32'h34545edb ,
32'h3cc41ddb , 32'h3cc4985b , 32'hf8c0987b , 32'hfcf3847b , 32'hf6a6847f , 32'hbebe0cfb , 32'hb4de0ded , 32'h90da2d6d   }; 


logic [31:0] EXP_T2_ROR[0:63]      = '{
32'hce20b47e , 32'ha29f64d1 , 32'h3096d054 , 32'hc21008d0 , 32'h45bb0c4b , 32'h5029ac8f , 32'h0d5e0cc0 , 32'h2949eb6c ,
32'hba794dc2 , 32'h15ffad31 , 32'h5cac0711 , 32'h6ccbc526 , 32'h2f9eee48 , 32'h29c634f3 , 32'h25562836 , 32'hdf906fd4 ,
32'h58c535f1 , 32'h76c5c4f5 , 32'h5157a6a1 , 32'hff8cd2ad , 32'h51d3431b , 32'ha640c29b , 32'h9a43bf51 , 32'h759d1b0a ,
32'hc9ed56dd , 32'hf66b0b1f , 32'hc89998a8 , 32'hb37cf281 , 32'hf963c20e , 32'h89cfb5ce , 32'h69a8407c , 32'h8f1995eb ,
32'h4fa886aa , 32'h4a90902b , 32'h91003786 , 32'h2bc2a37e , 32'he5748f69 , 32'h2c915f18 , 32'hc14e73aa , 32'h5ac8193e ,
32'h7408bcaa , 32'h12b2e9b8 , 32'hc73bdc05 , 32'h422dc671 , 32'hb5704fcc , 32'h8311c588 , 32'had0f0274 , 32'hbd84cdc9 ,
32'h0cfcb237 , 32'hf3f6d884 , 32'h86ebd5b1 , 32'h0fa817e8 , 32'hcae757da , 32'h2f35481d , 32'h433ccfa2 , 32'h381b8def ,
32'h34ceacc3 , 32'hfaca6b61 , 32'hd837090c , 32'h406bf75a , 32'h2869e851 , 32'h71e9ef2a , 32'h236105da , 32'h174d83c6   }; 


logic [31:0] EXP_T2_ROR_A_2[0:63]  = '{
32'hda827999 , 32'h575abaf3 , 32'h569ab66b , 32'hf230d1e9 , 32'hb5543d99 , 32'h8110269a , 32'h4ad0827d , 32'h3940c0e0 ,
32'he1681ed7 , 32'h63813b2e , 32'he321cd1a , 32'h11e628fd , 32'h7dc7f16a , 32'h21e44a64 , 32'hb64cbac5 , 32'hb01917f7 ,
32'hac3e88e3 , 32'hc876a6a6 , 32'h70bef674 , 32'hff9ddeef , 32'hf87c830c , 32'he771a2d8 , 32'h70981b5b , 32'he9e8d88f ,
32'h71754f63 , 32'h070b0a0e , 32'h737a00df , 32'h2d8bb12f , 32'h1df4dd4a , 32'h4d8d20b2 , 32'h280182cc , 32'hbaa64a88 ,
32'h5ceccefd , 32'he6384941 , 32'h7f98137d , 32'h2a69dce3 , 32'h196833f9 , 32'h5069972c , 32'h0d37c581 , 32'h9b715ea2 ,
32'h9e7a9a1e , 32'hb599c1d9 , 32'hf7d1994b , 32'h85ea837f , 32'he752ebe4 , 32'h4998a205 , 32'h5caad2e4 , 32'h2853052c ,
32'h505c8ca3 , 32'hc15d5f3a , 32'h3c46feaa , 32'h5e814228 , 32'ha21b9e88 , 32'hc407f4a3 , 32'hfd5c0bf6 , 32'hcfb11736 ,
32'hce332644 , 32'hff34621e , 32'hf018b51b , 32'hbfedc11c , 32'hedaba3ff , 32'h6e178b3a , 32'h0134935b , 32'h74e68859   }; 

logic [31:0] EXP_T2_ROR_A_13[0:63] = '{
32'h333b504f , 32'h5e6aeb57 , 32'hcd6ad356 , 32'h3d3e461a , 32'hb336aa87 , 32'hd3502204 , 32'h4fa95a10 , 32'h1c072818 ,
32'hdafc2d03 , 32'h65cc7027 , 32'ha35c6439 , 32'h1fa23cc5 , 32'h2d4fb8fe , 32'h4c843c89 , 32'h58b6c997 , 32'hfef60322 ,
32'h1c7587d1 , 32'hd4d90ed4 , 32'hce8e17de , 32'hddfff3bb , 32'h619f0f90 , 32'h5b1cee34 , 32'h6b6e1303 , 32'h11fd3d1b ,
32'hec6e2ea9 , 32'h41c0e161 , 32'h1bee6f40 , 32'h25e5b176 , 32'ha943be9b , 32'h1649b1a4 , 32'h59850030 , 32'h511754c9 ,
32'hdfab9d99 , 32'h283cc709 , 32'h6faff302 , 32'h9c654d3b , 32'h7f232d06 , 32'he58a0d32 , 32'hb021a6f8 , 32'hd4536e2b ,
32'h43d3cf53 , 32'h3b36b338 , 32'h297efa33 , 32'h6ff0bd50 , 32'h7c9cea5d , 32'h40a93314 , 32'h5c8b955a , 32'ha5850a60 ,
32'h946a0b91 , 32'he7582bab , 32'hd54788df , 32'h450bd028 , 32'hd1144373 , 32'h947880fe , 32'h7edfab81 , 32'he6d9f622 ,
32'hc899c664 , 32'h43dfe68c , 32'ha37e0316 , 32'h2397fdb8 , 32'h7ffdb574 , 32'h674dc2f1 , 32'h6b602692 , 32'h0b2e9cd1   }; 

logic [31:0] EXP_A_REG[0:63]       = '{
32'h5d6aebcd, 32'h5a6ad9ad, 32'hc8c347a7, 32'hd550f666, 32'h04409a6a, 32'h2b4209f5, 32'he5030380, 32'h85a07b5f,
32'h8e04ecb9, 32'h8c87346b, 32'h4798a3f4, 32'hf71fc5a9, 32'h87912990, 32'hd932eb16, 32'hc0645fde, 32'hb0fa238e,
32'h21da9a9b, 32'hc2fbd9d1, 32'hfe777bbf, 32'he1f20c33, 32'h9dc68b63, 32'hc2606d6d, 32'ha7a3623f, 32'hc5d53d8d,
32'h1c2c2838, 32'hcde8037d, 32'hb62ec4bc, 32'h77d37528, 32'h363482c9, 32'ha0060b30, 32'hea992a22, 32'h73b33bf5,
32'h98e12507, 32'hfe604df5, 32'ha9a7738c, 32'h65a0cfe4, 32'h41a65cb1, 32'h34df1604, 32'h6dc57a8a, 32'h79ea687a,
32'hd6670766, 32'hdf46652f, 32'h17aa0dfe, 32'h9d4baf93, 32'h26628815, 32'h72ab4b91, 32'ha14c14b0, 32'h4172328d,
32'h05757ceb, 32'hf11bfaa8, 32'h7a0508a1, 32'h886e7a22, 32'h101fd28f, 32'hf5702fdb, 32'h3ec45cdb, 32'h38cc9913,
32'hfcd1887b, 32'hc062d46f, 32'hffb70472, 32'hb6ae8fff, 32'hb85e2ce9, 32'h04d24d6c, 32'hd39a2165, 32'h506e3058  }; 

logic [31:0] EXP_B_REG[0:63]       = '{
32'h6a09e667, 32'h5d6aebcd, 32'h5a6ad9ad, 32'hc8c347a7, 32'hd550f666, 32'h04409a6a, 32'h2b4209f5, 32'he5030380,
32'h85a07b5f, 32'h8e04ecb9, 32'h8c87346b, 32'h4798a3f4, 32'hf71fc5a9, 32'h87912990, 32'hd932eb16, 32'hc0645fde,
32'hb0fa238e, 32'h21da9a9b, 32'hc2fbd9d1, 32'hfe777bbf, 32'he1f20c33, 32'h9dc68b63, 32'hc2606d6d, 32'ha7a3623f,
32'hc5d53d8d, 32'h1c2c2838, 32'hcde8037d, 32'hb62ec4bc, 32'h77d37528, 32'h363482c9, 32'ha0060b30, 32'hea992a22,
32'h73b33bf5, 32'h98e12507, 32'hfe604df5, 32'ha9a7738c, 32'h65a0cfe4, 32'h41a65cb1, 32'h34df1604, 32'h6dc57a8a,
32'h79ea687a, 32'hd6670766, 32'hdf46652f, 32'h17aa0dfe, 32'h9d4baf93, 32'h26628815, 32'h72ab4b91, 32'ha14c14b0,
32'h4172328d, 32'h05757ceb, 32'hf11bfaa8, 32'h7a0508a1, 32'h886e7a22, 32'h101fd28f, 32'hf5702fdb, 32'h3ec45cdb,
32'h38cc9913, 32'hfcd1887b, 32'hc062d46f, 32'hffb70472, 32'hb6ae8fff, 32'hb85e2ce9, 32'h04d24d6c, 32'hd39a2165  }; 

logic [31:0] EXP_C_REG[0:63]       ='{
32'hbb67ae85, 32'h6a09e667, 32'h5d6aebcd, 32'h5a6ad9ad, 32'hc8c347a7, 32'hd550f666, 32'h04409a6a, 32'h2b4209f5,
32'he5030380, 32'h85a07b5f, 32'h8e04ecb9, 32'h8c87346b, 32'h4798a3f4, 32'hf71fc5a9, 32'h87912990, 32'hd932eb16,
32'hc0645fde, 32'hb0fa238e, 32'h21da9a9b, 32'hc2fbd9d1, 32'hfe777bbf, 32'he1f20c33, 32'h9dc68b63, 32'hc2606d6d,
32'ha7a3623f, 32'hc5d53d8d, 32'h1c2c2838, 32'hcde8037d, 32'hb62ec4bc, 32'h77d37528, 32'h363482c9, 32'ha0060b30,
32'hea992a22, 32'h73b33bf5, 32'h98e12507, 32'hfe604df5, 32'ha9a7738c, 32'h65a0cfe4, 32'h41a65cb1, 32'h34df1604,
32'h6dc57a8a, 32'h79ea687a, 32'hd6670766, 32'hdf46652f, 32'h17aa0dfe, 32'h9d4baf93, 32'h26628815, 32'h72ab4b91,
32'ha14c14b0, 32'h4172328d, 32'h05757ceb, 32'hf11bfaa8, 32'h7a0508a1, 32'h886e7a22, 32'h101fd28f, 32'hf5702fdb,
32'h3ec45cdb, 32'h38cc9913, 32'hfcd1887b, 32'hc062d46f, 32'hffb70472, 32'hb6ae8fff, 32'hb85e2ce9, 32'h04d24d6c  }; 

logic [31:0] EXP_D_REG[0:63]       = '{
32'h3c6ef372, 32'hbb67ae85, 32'h6a09e667, 32'h5d6aebcd, 32'h5a6ad9ad, 32'hc8c347a7, 32'hd550f666, 32'h04409a6a,
32'h2b4209f5, 32'he5030380, 32'h85a07b5f, 32'h8e04ecb9, 32'h8c87346b, 32'h4798a3f4, 32'hf71fc5a9, 32'h87912990,
32'hd932eb16, 32'hc0645fde, 32'hb0fa238e, 32'h21da9a9b, 32'hc2fbd9d1, 32'hfe777bbf, 32'he1f20c33, 32'h9dc68b63,
32'hc2606d6d, 32'ha7a3623f, 32'hc5d53d8d, 32'h1c2c2838, 32'hcde8037d, 32'hb62ec4bc, 32'h77d37528, 32'h363482c9,
32'ha0060b30, 32'hea992a22, 32'h73b33bf5, 32'h98e12507, 32'hfe604df5, 32'ha9a7738c, 32'h65a0cfe4, 32'h41a65cb1,
32'h34df1604, 32'h6dc57a8a, 32'h79ea687a, 32'hd6670766, 32'hdf46652f, 32'h17aa0dfe, 32'h9d4baf93, 32'h26628815,
32'h72ab4b91, 32'ha14c14b0, 32'h4172328d, 32'h05757ceb, 32'hf11bfaa8, 32'h7a0508a1, 32'h886e7a22, 32'h101fd28f,
32'hf5702fdb, 32'h3ec45cdb, 32'h38cc9913, 32'hfcd1887b, 32'hc062d46f, 32'hffb70472, 32'hb6ae8fff, 32'hb85e2ce9  }; 

logic [31:0] EXP_E_REG[0:63]       = '{
32'hfa2a4622, 32'h78ce7989, 32'hf92939eb, 32'h24e00850, 32'h43ada245, 32'h714260ad, 32'h9b27a401, 32'h0c657a79,
32'h32ca2d8c, 32'h1cc92596, 32'h436b23e8, 32'h816fd6e9, 32'h1e578218, 32'h745a48de, 32'h0b92f20c, 32'h07590dcd,
32'h8034229c, 32'h846ee454, 32'hcc899961, 32'hb0638179, 32'h8ada8930, 32'he1257970, 32'h49f5114a, 32'haa47c347,
32'h2823ef91, 32'h14383d8e, 32'hc74c6516, 32'hedffbff8, 32'h6112a3b7, 32'hade79437, 32'h0109ab3a, 32'hba591112,
32'h9cd9f5f6, 32'h59249dd3, 32'h085f3833, 32'hf4b002d6, 32'h0772a26b, 32'ha507a53d, 32'hf0781bc8, 32'h1efbc0a0,
32'h26352d63, 32'h838b2711, 32'hdecd4715, 32'hfda24c2e, 32'ha80f11f0, 32'hb7755da1, 32'hd57b94a9, 32'hfecf0bc6,
32'hbd714038, 32'h6e5c390c, 32'h52f1ccf7, 32'h49231c1e, 32'h529e7d00, 32'h9f4787c3, 32'he50e1b4f, 32'h54cb266b,
32'h9b5e906c, 32'h7e44008e, 32'h6d83bfc6, 32'hb21bad3d, 32'h961f4894, 32'h948d25b6, 32'hfb121210, 32'h5ef50f24  }; 


logic [31:0] EXP_F_REG[0:63]       = '{
32'h510e527f, 32'hfa2a4622, 32'h78ce7989, 32'hf92939eb, 32'h24e00850, 32'h43ada245, 32'h714260ad, 32'h9b27a401,
32'h0c657a79, 32'h32ca2d8c, 32'h1cc92596, 32'h436b23e8, 32'h816fd6e9, 32'h1e578218, 32'h745a48de, 32'h0b92f20c,
32'h07590dcd, 32'h8034229c, 32'h846ee454, 32'hcc899961, 32'hb0638179, 32'h8ada8930, 32'he1257970, 32'h49f5114a,
32'haa47c347, 32'h2823ef91, 32'h14383d8e, 32'hc74c6516, 32'hedffbff8, 32'h6112a3b7, 32'hade79437, 32'h0109ab3a,
32'hba591112, 32'h9cd9f5f6, 32'h59249dd3, 32'h085f3833, 32'hf4b002d6, 32'h0772a26b, 32'ha507a53d, 32'hf0781bc8,
32'h1efbc0a0, 32'h26352d63, 32'h838b2711, 32'hdecd4715, 32'hfda24c2e, 32'ha80f11f0, 32'hb7755da1, 32'hd57b94a9,
32'hfecf0bc6, 32'hbd714038, 32'h6e5c390c, 32'h52f1ccf7, 32'h49231c1e, 32'h529e7d00, 32'h9f4787c3, 32'he50e1b4f,
32'h54cb266b, 32'h9b5e906c, 32'h7e44008e, 32'h6d83bfc6, 32'hb21bad3d, 32'h961f4894, 32'h948d25b6, 32'hfb121210  }; 

logic [31:0] EXP_G_REG[0:63]       = '{
32'h9b05688c, 32'h510e527f, 32'hfa2a4622, 32'h78ce7989, 32'hf92939eb, 32'h24e00850, 32'h43ada245, 32'h714260ad,
32'h9b27a401, 32'h0c657a79, 32'h32ca2d8c, 32'h1cc92596, 32'h436b23e8, 32'h816fd6e9, 32'h1e578218, 32'h745a48de,
32'h0b92f20c, 32'h07590dcd, 32'h8034229c, 32'h846ee454, 32'hcc899961, 32'hb0638179, 32'h8ada8930, 32'he1257970,
32'h49f5114a, 32'haa47c347, 32'h2823ef91, 32'h14383d8e, 32'hc74c6516, 32'hedffbff8, 32'h6112a3b7, 32'hade79437,
32'h0109ab3a, 32'hba591112, 32'h9cd9f5f6, 32'h59249dd3, 32'h085f3833, 32'hf4b002d6, 32'h0772a26b, 32'ha507a53d,
32'hf0781bc8, 32'h1efbc0a0, 32'h26352d63, 32'h838b2711, 32'hdecd4715, 32'hfda24c2e, 32'ha80f11f0, 32'hb7755da1,
32'hd57b94a9, 32'hfecf0bc6, 32'hbd714038, 32'h6e5c390c, 32'h52f1ccf7, 32'h49231c1e, 32'h529e7d00, 32'h9f4787c3,
32'he50e1b4f, 32'h54cb266b, 32'h9b5e906c, 32'h7e44008e, 32'h6d83bfc6, 32'hb21bad3d, 32'h961f4894, 32'h948d25b6  }; 


logic [31:0] EXP_H_REG[0:63]       = '{
32'h1f83d9ab, 32'h9b05688c, 32'h510e527f, 32'hfa2a4622, 32'h78ce7989, 32'hf92939eb, 32'h24e00850, 32'h43ada245,
32'h714260ad, 32'h9b27a401, 32'h0c657a79, 32'h32ca2d8c, 32'h1cc92596, 32'h436b23e8, 32'h816fd6e9, 32'h1e578218,
32'h745a48de, 32'h0b92f20c, 32'h07590dcd, 32'h8034229c, 32'h846ee454, 32'hcc899961, 32'hb0638179, 32'h8ada8930,
32'he1257970, 32'h49f5114a, 32'haa47c347, 32'h2823ef91, 32'h14383d8e, 32'hc74c6516, 32'hedffbff8, 32'h6112a3b7,
32'hade79437, 32'h0109ab3a, 32'hba591112, 32'h9cd9f5f6, 32'h59249dd3, 32'h085f3833, 32'hf4b002d6, 32'h0772a26b,
32'ha507a53d, 32'hf0781bc8, 32'h1efbc0a0, 32'h26352d63, 32'h838b2711, 32'hdecd4715, 32'hfda24c2e, 32'ha80f11f0,
32'hb7755da1, 32'hd57b94a9, 32'hfecf0bc6, 32'hbd714038, 32'h6e5c390c, 32'h52f1ccf7, 32'h49231c1e, 32'h529e7d00,
32'h9f4787c3, 32'he50e1b4f, 32'h54cb266b, 32'h9b5e906c, 32'h7e44008e, 32'h6d83bfc6, 32'hb21bad3d, 32'h961f4894  }; 

