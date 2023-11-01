import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import "bootstrap/dist/css/bootstrap.min.css";
import homeImage from "../../assets/home-img.png";
import Item from "./Item";
import Minter from "./Minter";


function App() {
  
  const nftId = "c5kvi-uuaaa-aaaaa-qaaia-cai";

  return (
    <div className="App">
      <Header />
      {/* <Item id={nftId}/> */}
      <Minter />
      {/* <img className="bottom-space" src={homeImage} /> */}
      <Footer />
    </div>
  );
}

export default App;
