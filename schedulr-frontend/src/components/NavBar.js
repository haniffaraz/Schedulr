import React from 'react';
import { Navbar, NavItem } from 'react-materialize';



class NavBar extends React.Component {
 render() {
   return (
       <Navbar brand='Schedulr' center='true' className="nav brand-logo " right>
        <NavItem href="/">Providers</NavItem>
        <NavItem href="/appointments">My Appointments</NavItem>
       </Navbar>

 )}
}

export default NavBar;
