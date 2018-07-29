import React, { Component } from 'react';
import './App.css';
import Providers from './components/Providers';
import ProviderCard from './components/ProviderCard';
import { Switch, Route } from 'react-router-dom';
import NavBar from './components/NavBar';
import ProviderCalendar from './components/ProviderCalendar';

class App extends Component {


  render() {
    return (
      <div>
      <NavBar />
      <Switch>
         <Route exact path='/' component={Providers} />
         <Route exact path='/provider' component={ProviderCalendar}/>
       </Switch>
       </div>
    );
  }
}

export default App;
