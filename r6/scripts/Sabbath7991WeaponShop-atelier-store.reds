@addMethod(gameuiInGameMenuGameController)
protected cb func RegisterSABBATH7991WEAPONSHOPStore(event: ref<VirtualShopRegistration>) -> Bool {
  let allItems: array<String> = ["Items.AK_117", "Items.AK_205", "Items.AK_Custom", "Items.AK_Prototype_MkII", "Items.AK47_Black_Cat", "Items.AK47_Steel_Curtain", "Items.AKM", "Items.AKS_74U", "Items.KN44", "Items.RPK", "Items.Zastava_M76", "Items.glock_17", "Items.glock_18", "Items.glock_18_100", "Items.glock_18_vspec", "Items.glock_valentinos", "Items.Militech_M77_Viper", "Items.Militech_Beam_Rifle", "Items.Militech_Beam_Rifle_Smart", "Items.Arasaka_Masayuki", "Items.Desert_Eagle", "Items.Militech_Stinger", "Items.RSh12", "Items.Longbow_DMR", "Items.VHS_D2_Tactical", "Items.Lawgiver_MKIII", "Items.Lawgiver_MKIII_Stun", "Items.Lawgiver_MKIII_Fire", "Items.Lawgiver_MKIII_Flechette", "Items.MasterpieceArms_MPA30SST", "Items.OTs14_Groza", "Items.B23R", "Items.Beretta_93R", "Items.Desolator", "Items.Malorian_Arms_FireX", "Items.Malorian_Arms_StunX", "Items.Malorian_Arms_X", "Items.Mozu_Revolver", "Items.MR6", "Items.Prokolot", "Items.RK5", "Items.RK5_Extended_Mag", "Items.Strife_Mk2", "Items.Strife_Mk2_Extended_Mag", "Items.Zenith_CA40", "Items.Canik_Rival_S", "Items.Daemon_9mm", "Items.GS_9mm", "Items.Kendall44", "Items.M9_Phantom_Limb", "Items.M27S", "Items.ONI_Smart_Pistol", "Items.OSP_18", "Items.P220", "Items.Stechkin_APS", "Items.USP_45_Fate_Maker", "Items.AR15_SLR", "Items.Flatline", "Items.XPR_50", "Items.Scar_Black_Default_Stock", "Items.Scar_Black_Short_Stock", "Items.Scar_Jack_Default_Stock", "Items.Scar_Jack_Short_Stock", "Items.Scar_Mack_Default_Stock", "Items.Scar_Mack_Short_Stock", "Items.Scar_Night_City_Special", "Items.Scar_Sludge_Default_Stock", "Items.Scar_Sludge_Short_Stock", "Items.Nokota_Stingray", "Items.Nokota_Taipan", "Items.Doom_Chainsaw", "Items.Fleshlight", "Items.Hatchet_Heat_Hawk", "Items.Hatchet_No_Masters", "Items.Hatchet_Riddle_Of_Steel", "Items.HF_Murasama", "Items.Leviathan_Axe", "Items.Louisville_Slugger", "Items.Machete_Default", "Items.Scythe_Blood_Bunny", "Items.Scythe_Default", "Items.Sledgehammer_Doom_Hammer", "Items.Swiss_Army_Knife", "Items.Teeth_of_Terra", "Items.Vampire_Metal_Stake", "Items.Zelda_Master_Sword", "Items.Electric_Hellfire", "Items.Electric_HellfireMk2", "Items.M79", "Items.XM25", "Items.Arasaka_Nobunaga", "Items.manavortex_vergil_devil_katana", "Items.combat_master", "Items.Militech_Ajax_Raptor", "Items.Armatech_458_SOCOM", "Items.Armatech_MK1_556", "Items.MK78_SAW", "Items.HCAR_Black", "Items.DTIR_HCAR_Black", "Items.Mateba_6_Unica", "Items.Mateba_6_Unica_Comp", "Items.Burya_Basilic", "Items.Gravitazer", "Items.HK416", "Items.Colt_M4_Carbine", "Items.Sig_Sauer_XM7", "Items.L85A3_Black", "Items.L85A3_Black_Olive", "Items.L85A3_Black_Tan", "Items.L85A3_Tan_Olive", "Items.KVD_Enforcer", "Items.KVD_Techtronika", "Items.KVInhibitor", "Items.KVInhibitor_GRAU", "Items.Fabarm_SDASS", "Items.Franchi_PA3", "Items.FS12_Shotgun", "Items.HardReboot_Shotgun", "Items.KS23_Shotgun", "Items.Lockwood680", "Items.M10Breacher_Wasteland", "Items.MCS880", "Items.Model680_Showstopper", "Items.Model680", "Items.Mossberg590_Cruiser", "Items.Shotgun_LastRites"];   let allPrices: array<Int32> = [75000, 80000, 34000, 354779, 172567, 170818, 164440, 33104, 92282, 276887, 235000, 22000, 94350, 191100, 252650, 343900, 55000, 240000, 255000, 25000, 45000, 356750, 191950, 290000, 45000, 215000, 345000, 235000, 210600, 30000, 105000, 24000, 25000, 225000, 335000, 325000, 315000, 75368, 33794, 25360, 95000, 185000, 36000, 46600, 24500, 45600, 175100, 204850, 175350, 23000, 91850, 175600, 86100, 23500, 24000, 305000, 184900, 175000, 400000, 83150, 89400, 195400, 85650, 231900, 226150, 340000, 395000, 385000, 315000, 340000, 65000, 270000, 165250, 40250, 40500, 310000, 140250, 20000, 20250, 175500, 20500, 65500, 20750, 190750, 40750, 350000, 500000, 500000, 750000, 1000000, 245000, 1000000, 24500, 78205, 209250, 147500, 300000, 150000, 150000, 60000, 60000, 250000, 300000, 150000, 150000, 150000, 200000, 200000, 200000, 200000, 150000, 150000, 200000, 200000, 200000, 25000, 150000, 300000, 300000, 150000, 200000, 150000, 200000, 200000, 60000, 300000];   let allQualities: array<String> = ["Uncommon", "Uncommon", "Common", "Legendary", "Rare", "Rare", "Rare", "Common", "Uncommon", "Epic", "Epic", "Common", "Uncommon", "Rare", "Epic", "Legendary", "Uncommon", "Epic", "Epic", "Common", "Common", "Legendary", "Rare", "Epic", "Common", "Epic", "Epic", "Epic", "Epic", "Common", "Rare", "Common", "Common", "Epic", "Legendary", "Legendary", "Legendary", "Uncommon", "Common", "Common", "Uncommon", "Rare", "Common", "Uncommon", "Common", "Uncommon", "Rare", "Epic", "Rare", "Common", "Uncommon", "Rare", "Uncommon", "Common", "Common", "Legendary", "Rare", "Epic", "Legendary", "Uncommon", "Uncommon", "Rare", "Rare", "Epic", "Epic", "Legendary", "Legendary", "Legendary", "Legendary", "Legendary", "Rare", "Legendary", "Rare", "Uncommon", "Uncommon", "Legendary", "Epic", "Common", "Common", "Epic", "Common", "Rare", "Common", "Epic", "Uncommon", "Legendary", "Legendary", "Legendary", "Legendary", "Legendary", "Legendary", "Legendary", "Common", "Uncommon", "Epic", "Rare", "Epic", "Rare", "Rare", "Uncommon", "Uncommon", "Legendary", "Legendary", "Rare", "Rare", "Rare", "Epic", "Epic", "Epic", "Epic", "Rare", "Rare", "Epic", "Epic", "Epic", "Common", "Rare", "Legendary", "Legendary", "Rare", "Epic", "Rare", "Epic", "Epic", "Uncommon", "Legendary"];   let allQuantities: array<Int32> = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];

  let level: Int32 = 9999;
  let player: ref<GameObject> = this.GetPlayerControlledObject();
  if IsDefined(player) {
    let devData: ref<PlayerDevelopmentData> = PlayerDevelopmentSystem.GetData(player);
    if IsDefined(devData) {
      level = devData.GetProficiencyLevel(gamedataProficiencyType.Level);
    };
  };

  let fItems: array<String>;
  let fPrices: array<Int32>;
  let fQualities: array<String>;
  let fQuantities: array<Int32>;
  let qn: Int32 = ArraySize(allQualities);
  let i: Int32 = 0;
  while i < ArraySize(allItems) {
    let q: String = i < qn ? allQualities[i] : "";
    if level >= Sabbath7991RequiredLevelForQuality(q) {
      ArrayPush(fItems, allItems[i]);
      ArrayPush(fPrices, allPrices[i]);
      ArrayPush(fQualities, q);
      ArrayPush(fQuantities, allQuantities[i]);
    };
    i += 1;
  };

  event.AddStore(
    n"SABBATH7991WEAPONSHOP",
    "Sabbath’s Virtual Armory",
    fItems,
    fPrices,
    r"base/sabbath7991/icons/shop_icon/sabbath7991_shop_icon.inkatlas",
    n"slot_01",
    fQualities,
    fQuantities
  );
}

public func Sabbath7991RequiredLevelForQuality(quality: String) -> Int32 {
  if Equals(quality, "Uncommon") { return 8; };
  if Equals(quality, "Rare") { return 18; };
  if Equals(quality, "Epic") { return 28; };
  if Equals(quality, "Legendary") { return 40; };
  return 1;
}
