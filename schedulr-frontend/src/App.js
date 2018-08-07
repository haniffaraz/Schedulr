import React, { Component } from 'react';
import './App.css';
import Providers from './components/Providers';
import { Switch, Route } from 'react-router-dom';
import NavBar from './components/NavBar';
import ProviderCalendar from './components/ProviderCalendar';
import Appointments from './components/Appointments'

class App extends Component {


  render() {
    return (
      <div>
      <NavBar />
      <Switch>
        <Route exact path='/' component={Providers} />
        <Route exact path='/provider/:id' component={ProviderCalendar}/>
        <Route exact path='/appointments' component={Appointments}/>
      </Switch>
       </div>
    );
  }
}

export default App;
