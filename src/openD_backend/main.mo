import Debug "mo:base/Debug";
import Text "mo:base/Text";
import Nat8 "mo:base/Nat8";
import Principal "mo:base/Principal";
import NFTActorClass "../openD_backend/NFT/NFT";
import Cycles "mo:base/ExperimentalCycles";


actor openD {

  public shared(msg) func mint(imgData: [Nat8], name:Text):async Principal {
    let owner: Principal = msg.caller;
    let newNft = await NFTActorClass.NFT(name, owner, imgData);

    Debug.print("Mint Balance " # debug_show ( Cycles.balance()));
    Cycles.add(190_500_000_000);  
    let newCFTPrincipal = await newNft.getCanisterId();
    Debug.print("After Mint Balance " # debug_show ( Cycles.balance()));


    return newCFTPrincipal;
    // return Principal.fromText("kenneth sidibe");

  };

  func operation() : async() {
    ignore Cycles.accept(100_000_000_000);
  };

  public func getBalance() : async() {
    Cycles.add(100_00_000_000);
    Debug.print( "Mint WTF Balance:" # debug_show(Cycles.balance()));
    // await operation();
  };

}