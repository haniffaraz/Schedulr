import React from 'react';
import { Navbar, NavItem } from 'react-materialize';
// import { BrowserRouter as Router, Route, Link } from 'react-router-dom';

class NavBar extends React.Component {
 render() {
   return (
     <div>
       <Navbar brand='Schedulr' center='true' className="nav brand-logo ">
        <NavItem href="/">Providers</NavItem>
       </Navbar>
     </div>

 )}
}

export default NavBar;
