/* Generated by Yosys 0.9+4052 (git sha1 d061b0e, gcc 8.3.1 -fPIC -Os) */

module axmul(a, b, c);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  input [7:0] a;
  input [7:0] b;
  output [15:0] c;
  sky130_fd_sc_hd__inv_2 _162_ (
    .A(b[0]),
    .Y(_105_)
  );
  sky130_fd_sc_hd__buf_1 _163_ (
    .A(_105_),
    .X(_106_)
  );
  sky130_fd_sc_hd__inv_2 _164_ (
    .A(a[3]),
    .Y(_107_)
  );
  sky130_fd_sc_hd__buf_1 _165_ (
    .A(_107_),
    .X(_108_)
  );
  sky130_fd_sc_hd__buf_1 _166_ (
    .A(_108_),
    .X(_109_)
  );
  sky130_fd_sc_hd__inv_2 _167_ (
    .A(b[1]),
    .Y(_110_)
  );
  sky130_fd_sc_hd__buf_1 _168_ (
    .A(_110_),
    .X(_111_)
  );
  sky130_fd_sc_hd__inv_2 _169_ (
    .A(a[2]),
    .Y(_112_)
  );
  sky130_fd_sc_hd__buf_1 _170_ (
    .A(_112_),
    .X(_113_)
  );
  sky130_fd_sc_hd__buf_1 _171_ (
    .A(_113_),
    .X(_114_)
  );
  sky130_fd_sc_hd__inv_2 _172_ (
    .A(b[2]),
    .Y(_115_)
  );
  sky130_fd_sc_hd__buf_1 _173_ (
    .A(_115_),
    .X(_116_)
  );
  sky130_fd_sc_hd__inv_2 _174_ (
    .A(a[1]),
    .Y(_117_)
  );
  sky130_fd_sc_hd__buf_1 _175_ (
    .A(_117_),
    .X(_118_)
  );
  sky130_fd_sc_hd__inv_2 _176_ (
    .A(b[3]),
    .Y(_119_)
  );
  sky130_fd_sc_hd__buf_1 _177_ (
    .A(_119_),
    .X(_120_)
  );
  sky130_fd_sc_hd__inv_2 _178_ (
    .A(a[0]),
    .Y(_121_)
  );
  sky130_fd_sc_hd__buf_1 _179_ (
    .A(_121_),
    .X(_122_)
  );
  sky130_fd_sc_hd__o22a_2 _180_ (
    .A1(_116_),
    .A2(_118_),
    .B1(_120_),
    .B2(_122_),
    .X(_123_)
  );
  sky130_fd_sc_hd__o221ai_2 _181_ (
    .A1(_106_),
    .A2(_109_),
    .B1(_111_),
    .B2(_114_),
    .C1(_123_),
    .Y(c[3])
  );
  sky130_fd_sc_hd__o22a_2 _182_ (
    .A1(_111_),
    .A2(_118_),
    .B1(_116_),
    .B2(_122_),
    .X(_124_)
  );
  sky130_fd_sc_hd__o21ai_2 _183_ (
    .A1(_106_),
    .A2(_114_),
    .B1(_124_),
    .Y(c[2])
  );
  sky130_fd_sc_hd__or2_2 _184_ (
    .A(_106_),
    .B(_118_),
    .X(_125_)
  );
  sky130_fd_sc_hd__a21oi_2 _185_ (
    .A1(b[1]),
    .A2(a[0]),
    .B1(_125_),
    .Y(_126_)
  );
  sky130_fd_sc_hd__a31o_2 _186_ (
    .A1(b[1]),
    .A2(a[0]),
    .A3(_125_),
    .B1(_126_),
    .X(c[1])
  );
  sky130_fd_sc_hd__nor2_2 _187_ (
    .A(_106_),
    .B(_122_),
    .Y(c[0])
  );
  sky130_fd_sc_hd__inv_2 _188_ (
    .A(b[4]),
    .Y(_127_)
  );
  sky130_fd_sc_hd__or2_2 _189_ (
    .A(_122_),
    .B(_127_),
    .X(_128_)
  );
  sky130_fd_sc_hd__inv_2 _190_ (
    .A(a[4]),
    .Y(_129_)
  );
  sky130_fd_sc_hd__or2_2 _191_ (
    .A(_105_),
    .B(_129_),
    .X(_130_)
  );
  sky130_fd_sc_hd__or2_2 _192_ (
    .A(_117_),
    .B(_120_),
    .X(_131_)
  );
  sky130_fd_sc_hd__o221a_2 _193_ (
    .A1(_113_),
    .A2(_116_),
    .B1(_108_),
    .B2(_111_),
    .C1(_131_),
    .X(_132_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _194_ (
    .A1_N(_130_),
    .A2_N(_132_),
    .B1(_130_),
    .B2(_132_),
    .X(_133_)
  );
  sky130_fd_sc_hd__a2bb2oi_2 _195_ (
    .A1_N(_128_),
    .A2_N(_133_),
    .B1(_128_),
    .B2(_133_),
    .Y(c[4])
  );
  sky130_fd_sc_hd__inv_2 _196_ (
    .A(b[7]),
    .Y(_134_)
  );
  sky130_fd_sc_hd__buf_1 _197_ (
    .A(_134_),
    .X(_135_)
  );
  sky130_fd_sc_hd__buf_1 _198_ (
    .A(_135_),
    .X(_136_)
  );
  sky130_fd_sc_hd__inv_2 _199_ (
    .A(a[7]),
    .Y(_137_)
  );
  sky130_fd_sc_hd__buf_1 _200_ (
    .A(_137_),
    .X(_138_)
  );
  sky130_fd_sc_hd__or2_2 _201_ (
    .A(_136_),
    .B(_138_),
    .X(_139_)
  );
  sky130_fd_sc_hd__inv_2 _202_ (
    .A(_139_),
    .Y(_003_)
  );
  sky130_fd_sc_hd__inv_2 _203_ (
    .A(b[6]),
    .Y(_140_)
  );
  sky130_fd_sc_hd__inv_2 _204_ (
    .A(a[6]),
    .Y(_141_)
  );
  sky130_fd_sc_hd__or4_2 _205_ (
    .A(_140_),
    .B(_137_),
    .C(_141_),
    .D(_135_),
    .X(_142_)
  );
  sky130_fd_sc_hd__inv_2 _206_ (
    .A(_142_),
    .Y(_004_)
  );
  sky130_fd_sc_hd__buf_1 _207_ (
    .A(_129_),
    .X(_143_)
  );
  sky130_fd_sc_hd__buf_1 _208_ (
    .A(_127_),
    .X(_144_)
  );
  sky130_fd_sc_hd__buf_1 _209_ (
    .A(_141_),
    .X(_145_)
  );
  sky130_fd_sc_hd__inv_2 _210_ (
    .A(b[5]),
    .Y(_146_)
  );
  sky130_fd_sc_hd__buf_1 _211_ (
    .A(_146_),
    .X(_147_)
  );
  sky130_fd_sc_hd__buf_1 _212_ (
    .A(_140_),
    .X(_148_)
  );
  sky130_fd_sc_hd__buf_1 _213_ (
    .A(_148_),
    .X(_149_)
  );
  sky130_fd_sc_hd__inv_2 _214_ (
    .A(a[5]),
    .Y(_150_)
  );
  sky130_fd_sc_hd__buf_1 _215_ (
    .A(_150_),
    .X(_151_)
  );
  sky130_fd_sc_hd__o22a_2 _216_ (
    .A1(_145_),
    .A2(_147_),
    .B1(_149_),
    .B2(_151_),
    .X(_152_)
  );
  sky130_fd_sc_hd__o221a_2 _217_ (
    .A1(_143_),
    .A2(_136_),
    .B1(_144_),
    .B2(_138_),
    .C1(_152_),
    .X(_153_)
  );
  sky130_fd_sc_hd__or4_2 _218_ (
    .A(_109_),
    .B(_148_),
    .C(_114_),
    .D(_135_),
    .X(_154_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _219_ (
    .A1_N(_153_),
    .A2_N(_154_),
    .B1(_153_),
    .B2(_154_),
    .X(_155_)
  );
  sky130_fd_sc_hd__o22a_2 _220_ (
    .A1(_153_),
    .A2(_154_),
    .B1(_142_),
    .B2(_155_),
    .X(_156_)
  );
  sky130_fd_sc_hd__or2_2 _221_ (
    .A(_147_),
    .B(_138_),
    .X(_157_)
  );
  sky130_fd_sc_hd__o221a_2 _222_ (
    .A1(_149_),
    .A2(_145_),
    .B1(_136_),
    .B2(_151_),
    .C1(_157_),
    .X(_158_)
  );
  sky130_fd_sc_hd__or2_2 _223_ (
    .A(_156_),
    .B(_158_),
    .X(_159_)
  );
  sky130_fd_sc_hd__inv_2 _224_ (
    .A(_159_),
    .Y(_160_)
  );
  sky130_fd_sc_hd__and2_2 _225_ (
    .A(_156_),
    .B(_158_),
    .X(_161_)
  );
  sky130_fd_sc_hd__nor2_2 _226_ (
    .A(_160_),
    .B(_161_),
    .Y(_005_)
  );
  sky130_fd_sc_hd__or2_2 _227_ (
    .A(_109_),
    .B(_136_),
    .X(_006_)
  );
  sky130_fd_sc_hd__or2_2 _228_ (
    .A(_151_),
    .B(_147_),
    .X(_007_)
  );
  sky130_fd_sc_hd__o221a_2 _229_ (
    .A1(_144_),
    .A2(_145_),
    .B1(_143_),
    .B2(_149_),
    .C1(_007_),
    .X(_008_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _230_ (
    .A1_N(_006_),
    .A2_N(_008_),
    .B1(_006_),
    .B2(_008_),
    .X(_009_)
  );
  sky130_fd_sc_hd__o22a_2 _231_ (
    .A1(_006_),
    .A2(_008_),
    .B1(_139_),
    .B2(_009_),
    .X(_010_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _232_ (
    .A1_N(_142_),
    .A2_N(_155_),
    .B1(_142_),
    .B2(_155_),
    .X(_011_)
  );
  sky130_fd_sc_hd__or2_2 _233_ (
    .A(_010_),
    .B(_011_),
    .X(_012_)
  );
  sky130_fd_sc_hd__inv_2 _234_ (
    .A(_012_),
    .Y(_013_)
  );
  sky130_fd_sc_hd__o22a_2 _235_ (
    .A1(_109_),
    .A2(_149_),
    .B1(_114_),
    .B2(_135_),
    .X(_014_)
  );
  sky130_fd_sc_hd__or2b_2 _236_ (
    .A(_014_),
    .B_N(_154_),
    .X(_015_)
  );
  sky130_fd_sc_hd__nor2_2 _237_ (
    .A(_144_),
    .B(_151_),
    .Y(_016_)
  );
  sky130_fd_sc_hd__or2_2 _238_ (
    .A(_143_),
    .B(_147_),
    .X(_017_)
  );
  sky130_fd_sc_hd__o2bb2a_2 _239_ (
    .A1_N(_016_),
    .A2_N(_017_),
    .B1(_016_),
    .B2(_017_),
    .X(_018_)
  );
  sky130_fd_sc_hd__o22a_2 _240_ (
    .A1(_148_),
    .A2(_138_),
    .B1(_145_),
    .B2(_135_),
    .X(_019_)
  );
  sky130_fd_sc_hd__or2_2 _241_ (
    .A(_004_),
    .B(_019_),
    .X(_020_)
  );
  sky130_fd_sc_hd__buf_1 _242_ (
    .A(_020_),
    .X(_021_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _243_ (
    .A1_N(_015_),
    .A2_N(_018_),
    .B1(_015_),
    .B2(_018_),
    .X(_022_)
  );
  sky130_fd_sc_hd__o22a_2 _244_ (
    .A1(_015_),
    .A2(_018_),
    .B1(_021_),
    .B2(_022_),
    .X(_023_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _245_ (
    .A1_N(_139_),
    .A2_N(_009_),
    .B1(_139_),
    .B2(_009_),
    .X(_024_)
  );
  sky130_fd_sc_hd__nand2_2 _246_ (
    .A(_023_),
    .B(_024_),
    .Y(_025_)
  );
  sky130_fd_sc_hd__or2_2 _247_ (
    .A(_143_),
    .B(_144_),
    .X(_026_)
  );
  sky130_fd_sc_hd__or2_2 _248_ (
    .A(_117_),
    .B(_134_),
    .X(_027_)
  );
  sky130_fd_sc_hd__o221a_2 _249_ (
    .A1(_113_),
    .A2(_148_),
    .B1(_108_),
    .B2(_146_),
    .C1(_027_),
    .X(_028_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _250_ (
    .A1_N(_026_),
    .A2_N(_028_),
    .B1(_026_),
    .B2(_028_),
    .X(_029_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _251_ (
    .A1_N(_158_),
    .A2_N(_029_),
    .B1(_158_),
    .B2(_029_),
    .X(_030_)
  );
  sky130_fd_sc_hd__o22a_2 _252_ (
    .A1(_116_),
    .A2(_151_),
    .B1(_120_),
    .B2(_143_),
    .X(_031_)
  );
  sky130_fd_sc_hd__o221a_2 _253_ (
    .A1(_106_),
    .A2(_138_),
    .B1(_111_),
    .B2(_145_),
    .C1(_031_),
    .X(_032_)
  );
  sky130_fd_sc_hd__or4_2 _254_ (
    .A(_107_),
    .B(_115_),
    .C(_112_),
    .D(_119_),
    .X(_033_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _255_ (
    .A1_N(_032_),
    .A2_N(_033_),
    .B1(_032_),
    .B2(_033_),
    .X(_034_)
  );
  sky130_fd_sc_hd__o22a_2 _256_ (
    .A1(_109_),
    .A2(_144_),
    .B1(_114_),
    .B2(_147_),
    .X(_035_)
  );
  sky130_fd_sc_hd__o221a_2 _257_ (
    .A1(_118_),
    .A2(_149_),
    .B1(_122_),
    .B2(_136_),
    .C1(_035_),
    .X(_036_)
  );
  sky130_fd_sc_hd__o22a_2 _258_ (
    .A1(_032_),
    .A2(_033_),
    .B1(_034_),
    .B2(_036_),
    .X(_037_)
  );
  sky130_fd_sc_hd__nand2_2 _259_ (
    .A(_030_),
    .B(_037_),
    .Y(_038_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _260_ (
    .A1_N(_021_),
    .A2_N(_022_),
    .B1(_020_),
    .B2(_022_),
    .X(_039_)
  );
  sky130_fd_sc_hd__o22a_2 _261_ (
    .A1(_026_),
    .A2(_028_),
    .B1(_158_),
    .B2(_029_),
    .X(_040_)
  );
  sky130_fd_sc_hd__nor2_2 _262_ (
    .A(_039_),
    .B(_040_),
    .Y(_041_)
  );
  sky130_fd_sc_hd__or2_2 _263_ (
    .A(_030_),
    .B(_037_),
    .X(_042_)
  );
  sky130_fd_sc_hd__inv_2 _264_ (
    .A(_042_),
    .Y(_043_)
  );
  sky130_fd_sc_hd__or2_2 _265_ (
    .A(_041_),
    .B(_043_),
    .X(_044_)
  );
  sky130_fd_sc_hd__or2_2 _266_ (
    .A(_108_),
    .B(_120_),
    .X(_045_)
  );
  sky130_fd_sc_hd__or2_2 _267_ (
    .A(_110_),
    .B(_150_),
    .X(_046_)
  );
  sky130_fd_sc_hd__o221a_2 _268_ (
    .A1(_105_),
    .A2(_141_),
    .B1(_116_),
    .B2(_129_),
    .C1(_046_),
    .X(_047_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _269_ (
    .A1_N(_045_),
    .A2_N(_047_),
    .B1(_045_),
    .B2(_047_),
    .X(_048_)
  );
  sky130_fd_sc_hd__or2_2 _270_ (
    .A(_117_),
    .B(_146_),
    .X(_049_)
  );
  sky130_fd_sc_hd__o221a_2 _271_ (
    .A1(_113_),
    .A2(_127_),
    .B1(_121_),
    .B2(_148_),
    .C1(_049_),
    .X(_050_)
  );
  sky130_fd_sc_hd__o22a_2 _272_ (
    .A1(_045_),
    .A2(_047_),
    .B1(_048_),
    .B2(_050_),
    .X(_051_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _273_ (
    .A1_N(_034_),
    .A2_N(_036_),
    .B1(_034_),
    .B2(_036_),
    .X(_052_)
  );
  sky130_fd_sc_hd__or2_2 _274_ (
    .A(_051_),
    .B(_052_),
    .X(_053_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _275_ (
    .A1_N(_048_),
    .A2_N(_050_),
    .B1(_048_),
    .B2(_050_),
    .X(_054_)
  );
  sky130_fd_sc_hd__o22a_2 _276_ (
    .A1(_108_),
    .A2(_115_),
    .B1(_113_),
    .B2(_120_),
    .X(_055_)
  );
  sky130_fd_sc_hd__or2b_2 _277_ (
    .A(_055_),
    .B_N(_033_),
    .X(_056_)
  );
  sky130_fd_sc_hd__or2_2 _278_ (
    .A(_105_),
    .B(_150_),
    .X(_057_)
  );
  sky130_fd_sc_hd__nor2_2 _279_ (
    .A(_111_),
    .B(_129_),
    .Y(_058_)
  );
  sky130_fd_sc_hd__o2bb2a_2 _280_ (
    .A1_N(_057_),
    .A2_N(_058_),
    .B1(_057_),
    .B2(_058_),
    .X(_059_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _281_ (
    .A1_N(_056_),
    .A2_N(_059_),
    .B1(_056_),
    .B2(_059_),
    .X(_060_)
  );
  sky130_fd_sc_hd__nor2_2 _282_ (
    .A(_118_),
    .B(_127_),
    .Y(_061_)
  );
  sky130_fd_sc_hd__or2_2 _283_ (
    .A(_121_),
    .B(_146_),
    .X(_062_)
  );
  sky130_fd_sc_hd__o2bb2a_2 _284_ (
    .A1_N(_061_),
    .A2_N(_062_),
    .B1(_061_),
    .B2(_062_),
    .X(_063_)
  );
  sky130_fd_sc_hd__o22a_2 _285_ (
    .A1(_056_),
    .A2(_059_),
    .B1(_060_),
    .B2(_063_),
    .X(_064_)
  );
  sky130_fd_sc_hd__or2_2 _286_ (
    .A(_054_),
    .B(_064_),
    .X(_065_)
  );
  sky130_fd_sc_hd__o22a_2 _287_ (
    .A1(_130_),
    .A2(_132_),
    .B1(_128_),
    .B2(_133_),
    .X(_066_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _288_ (
    .A1_N(_060_),
    .A2_N(_063_),
    .B1(_060_),
    .B2(_063_),
    .X(_067_)
  );
  sky130_fd_sc_hd__or2_2 _289_ (
    .A(_066_),
    .B(_067_),
    .X(_068_)
  );
  sky130_fd_sc_hd__nand2_2 _290_ (
    .A(_054_),
    .B(_064_),
    .Y(_069_)
  );
  sky130_fd_sc_hd__inv_2 _291_ (
    .A(_069_),
    .Y(_070_)
  );
  sky130_fd_sc_hd__or2_2 _292_ (
    .A(_068_),
    .B(_070_),
    .X(_071_)
  );
  sky130_fd_sc_hd__and2_2 _293_ (
    .A(_051_),
    .B(_052_),
    .X(_072_)
  );
  sky130_fd_sc_hd__a31o_2 _294_ (
    .A1(_053_),
    .A2(_065_),
    .A3(_071_),
    .B1(_072_),
    .X(_073_)
  );
  sky130_fd_sc_hd__inv_2 _295_ (
    .A(_073_),
    .Y(_074_)
  );
  sky130_fd_sc_hd__nand2_2 _296_ (
    .A(_039_),
    .B(_040_),
    .Y(_075_)
  );
  sky130_fd_sc_hd__o221a_2 _297_ (
    .A1(_038_),
    .A2(_041_),
    .B1(_044_),
    .B2(_074_),
    .C1(_075_),
    .X(_076_)
  );
  sky130_fd_sc_hd__nor2_2 _298_ (
    .A(_023_),
    .B(_024_),
    .Y(_077_)
  );
  sky130_fd_sc_hd__or2_2 _299_ (
    .A(_013_),
    .B(_077_),
    .X(_078_)
  );
  sky130_fd_sc_hd__nand2_2 _300_ (
    .A(_010_),
    .B(_011_),
    .Y(_079_)
  );
  sky130_fd_sc_hd__o221ai_2 _301_ (
    .A1(_013_),
    .A2(_025_),
    .B1(_076_),
    .B2(_078_),
    .C1(_079_),
    .Y(_080_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _302_ (
    .A1_N(_005_),
    .A2_N(_080_),
    .B1(_005_),
    .B2(_080_),
    .X(c[12])
  );
  sky130_fd_sc_hd__inv_2 _303_ (
    .A(_079_),
    .Y(_081_)
  );
  sky130_fd_sc_hd__or2_2 _304_ (
    .A(_013_),
    .B(_081_),
    .X(_082_)
  );
  sky130_fd_sc_hd__inv_2 _305_ (
    .A(_038_),
    .Y(_083_)
  );
  sky130_fd_sc_hd__o21ai_2 _306_ (
    .A1(_083_),
    .A2(_072_),
    .B1(_042_),
    .Y(_084_)
  );
  sky130_fd_sc_hd__o21a_2 _307_ (
    .A1(_075_),
    .A2(_077_),
    .B1(_025_),
    .X(_085_)
  );
  sky130_fd_sc_hd__inv_2 _308_ (
    .A(_068_),
    .Y(_086_)
  );
  sky130_fd_sc_hd__inv_2 _309_ (
    .A(_065_),
    .Y(_087_)
  );
  sky130_fd_sc_hd__o21a_2 _310_ (
    .A1(_086_),
    .A2(_087_),
    .B1(_069_),
    .X(_088_)
  );
  sky130_fd_sc_hd__o21ai_2 _311_ (
    .A1(_083_),
    .A2(_053_),
    .B1(_042_),
    .Y(_089_)
  );
  sky130_fd_sc_hd__or2_2 _312_ (
    .A(_088_),
    .B(_089_),
    .X(_090_)
  );
  sky130_fd_sc_hd__o21a_2 _313_ (
    .A1(_041_),
    .A2(_077_),
    .B1(_025_),
    .X(_091_)
  );
  sky130_fd_sc_hd__a31o_2 _314_ (
    .A1(_084_),
    .A2(_085_),
    .A3(_090_),
    .B1(_091_),
    .X(_092_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _315_ (
    .A1_N(_082_),
    .A2_N(_092_),
    .B1(_082_),
    .B2(_092_),
    .X(c[11])
  );
  sky130_fd_sc_hd__or2b_2 _316_ (
    .A(_077_),
    .B_N(_025_),
    .X(_093_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _317_ (
    .A1_N(_076_),
    .A2_N(_093_),
    .B1(_076_),
    .B2(_093_),
    .X(c[10])
  );
  sky130_fd_sc_hd__nand2_2 _318_ (
    .A(_066_),
    .B(_067_),
    .Y(_094_)
  );
  sky130_fd_sc_hd__or2_2 _319_ (
    .A(_087_),
    .B(_094_),
    .X(_095_)
  );
  sky130_fd_sc_hd__a31o_2 _320_ (
    .A1(_069_),
    .A2(_095_),
    .A3(_084_),
    .B1(_089_),
    .X(_096_)
  );
  sky130_fd_sc_hd__and2_2 _321_ (
    .A(_090_),
    .B(_096_),
    .X(_097_)
  );
  sky130_fd_sc_hd__or2b_2 _322_ (
    .A(_041_),
    .B_N(_075_),
    .X(_098_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _323_ (
    .A1_N(_097_),
    .A2_N(_098_),
    .B1(_097_),
    .B2(_098_),
    .X(c[9])
  );
  sky130_fd_sc_hd__nor2_2 _324_ (
    .A(_083_),
    .B(_043_),
    .Y(_099_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _325_ (
    .A1_N(_073_),
    .A2_N(_099_),
    .B1(_073_),
    .B2(_099_),
    .X(c[8])
  );
  sky130_fd_sc_hd__or2b_2 _326_ (
    .A(_072_),
    .B_N(_053_),
    .X(_100_)
  );
  sky130_fd_sc_hd__a2bb2o_2 _327_ (
    .A1_N(_088_),
    .A2_N(_100_),
    .B1(_088_),
    .B2(_100_),
    .X(c[7])
  );
  sky130_fd_sc_hd__nor2_2 _328_ (
    .A(_070_),
    .B(_087_),
    .Y(_101_)
  );
  sky130_fd_sc_hd__o32a_2 _329_ (
    .A1(_070_),
    .A2(_087_),
    .A3(_068_),
    .B1(_086_),
    .B2(_101_),
    .X(c[6])
  );
  sky130_fd_sc_hd__and2_2 _330_ (
    .A(_068_),
    .B(_094_),
    .X(c[5])
  );
  sky130_fd_sc_hd__nor2_2 _331_ (
    .A(_161_),
    .B(_081_),
    .Y(_102_)
  );
  sky130_fd_sc_hd__o221ai_2 _332_ (
    .A1(_160_),
    .A2(_102_),
    .B1(_091_),
    .B2(_096_),
    .C1(_085_),
    .Y(_103_)
  );
  sky130_fd_sc_hd__o211a_2 _333_ (
    .A1(_161_),
    .A2(_012_),
    .B1(_159_),
    .C1(_103_),
    .X(_000_)
  );
  sky130_fd_sc_hd__inv_2 _334_ (
    .A(_019_),
    .Y(_104_)
  );
  sky130_fd_sc_hd__a31o_2 _335_ (
    .A1(_142_),
    .A2(_104_),
    .A3(_003_),
    .B1(_004_),
    .X(_001_)
  );
  sky130_fd_sc_hd__o22a_2 _336_ (
    .A1(_139_),
    .A2(_021_),
    .B1(_003_),
    .B2(_104_),
    .X(_002_)
  );
  sky130_fd_sc_hd__a2bb2oi_2 _337_ (
    .A1_N(_021_),
    .A2_N(_000_),
    .B1(_021_),
    .B2(_000_),
    .Y(c[13])
  );
  sky130_fd_sc_hd__mux2_1 _338_ (
    .A0(_002_),
    .A1(_003_),
    .S(_000_),
    .X(c[14])
  );
  sky130_fd_sc_hd__mux2_1 _339_ (
    .A0(_001_),
    .A1(_004_),
    .S(_000_),
    .X(c[15])
  );
endmodule
