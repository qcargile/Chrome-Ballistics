module ChromeBallistics.LevelGate

import VirtualAtelier.Systems.VirtualAtelierStoresManager

public func ChromeBallistics_RebuildAtelierStores(gi: GameInstance) -> Void {
  let mgr: ref<VirtualAtelierStoresManager> = GameInstance.GetScriptableSystemsContainer(gi).Get(n"VirtualAtelier.Systems.VirtualAtelierStoresManager") as VirtualAtelierStoresManager;
  if IsDefined(mgr) {
    mgr.BuildStoresList();
  };
}

@wrapMethod(FullscreenVendorGameController)
protected cb func OnInitialize() -> Bool {
  let result: Bool = wrappedMethod();
  ChromeBallistics_RebuildAtelierStores(this.GetPlayerControlledObject().GetGame());
  return result;
}
