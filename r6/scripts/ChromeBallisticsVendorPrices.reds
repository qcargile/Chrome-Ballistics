module ChromeBallistics.Vendors

@if(ModuleExists("BetterEddies.Pricing"))
import BetterEddies.Pricing.ItemPriceAuthority

@if(ModuleExists("BetterEddies.Pricing"))
import BetterEddies.Pricing.PricingSystem

@if(ModuleExists("BetterEddies.Pricing"))
import BetterEddies.Config.MBESettings

@if(ModuleExists("BetterEddies.Pricing"))
public func ChromeBallisticsVendorPrice(vendorObject: wref<GameObject>, itemID: ItemID, quality: String, price: Int32) -> Int32 {
  let resolved: Int32 = price;
  if MBESettings.EnablePriceAuthority() {
    let mbePrice: Int32;
    if TweakDBInterface.GetBool(ItemID.GetTDBID(itemID) + t".cbVendorAttachment", false) {
      mbePrice = Cast<Int32>(Cast<Float>(price) * MBESettings.PriceClassMult_WeaponMod());
    } else {
      let rank: Int32 = ItemPriceAuthority.QualityRankFromString(quality);
      mbePrice = ItemPriceAuthority.PricedValue(itemID, rank, ItemPriceAuthority.AvgTypeMult(), ItemPriceAuthority.AvgEvoMult());
    };
    if mbePrice > 0 {
      resolved = mbePrice;
    };
  };
  if IsDefined(vendorObject) {
    let pricing: ref<PricingSystem> = PricingSystem.GetInstance(vendorObject.GetGame());
    if IsDefined(pricing) {
      return pricing.ModulateBuy(resolved, vendorObject);
    };
  };
  return resolved;
}

@if(!ModuleExists("BetterEddies.Pricing"))
public func ChromeBallisticsVendorPrice(vendorObject: wref<GameObject>, itemID: ItemID, quality: String, price: Int32) -> Int32 {
  return price;
}

@wrapMethod(MarketSystem)
public final static func GetBuyPrice(vendorObject: wref<GameObject>, itemID: ItemID) -> Int32 {
  let basePrice: Int32 = wrappedMethod(vendorObject, itemID);
  let recordID: TweakDBID = ItemID.GetTDBID(itemID);
  let price: Int32 = TweakDBInterface.GetInt(recordID + t".cbAtelierPrice", -1);
  if price < 0 {
    return basePrice;
  };
  return ChromeBallisticsVendorPrice(vendorObject, itemID, TweakDBInterface.GetString(recordID + t".cbAtelierQuality", ""), price);
}
