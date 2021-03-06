import React from "react";
import { Route, Link, NavLink } from "react-router-dom";

import Red from "./red";
import Green from "./green";
import Blue from "./blue";
import Violet from "./violet";
// import Indigo from "./indigo";
// import Yellow from "./yellow";
// import Orange from "./orange";

class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>
        <NavLink to="/blue">Blue</NavLink>
        <NavLink to="/red">Red</NavLink>
        <NavLink to="/green">Green</NavLink>
        <NavLink to="/violet">Violet</NavLink>
        {/* Your links should go here */}

        {/* get to blue/indigo, and then back to /blue */}
        <div id="rainbow">
          {/* Your routes should go here */}
            <Route path="/red" component={Red} />
            <Route path="/green" component={Green} />
            <Route path="/blue" component={Blue} />
            <Route path="/violet" component={Violet} />
            
        </div>
      </div>
    );
  }
}

export default Rainbow;
