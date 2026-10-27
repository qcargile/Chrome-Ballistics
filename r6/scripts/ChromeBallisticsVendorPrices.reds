module ChromeBallistics.Vendors

@if(ModuleExists("BetterEddies.Pricing"))
import BetterEddies.Pricing.ItemPriceAuthority

@if(ModuleExists("BetterEddies.Pricing"))
import BetterEddies.Config.MBESettings

@if(ModuleExists("BetterEddies.Pricing"))
public func ChromeBallisticsVendorPrice(itemID: ItemID, quality: String, price: Int32) -> Int32 {
  if MBESettings.EnablePriceAuthority() {
    let rank: Int32 = ItemPriceAuthority.QualityRankFromString(quality);
    let resolved: Int32 = ItemPriceAuthority.PricedValue(itemID, rank, ItemPriceAuthority.AvgTypeMult(), ItemPriceAuthority.AvgEvoMult());
    if resolved > 0 {
      return resolved;
    };
  };
  return price;
}

@if(!ModuleExists("BetterEddies.Pricing"))
public func ChromeBallisticsVendorPrice(itemID: ItemID, quality: String, price: Int32) -> Int32 {
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
  return ChromeBallisticsVendorPrice(itemID, TweakDBInterface.GetString(recordID + t".cbAtelierQuality", ""), price);
}
