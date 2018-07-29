import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, applyMiddleware } from 'redux';
import './index.css';
import App from './App';
import providerReducer from './reducers';
import thunk from 'redux-thunk';
import { BrowserRouter } from 'react-router-dom'

const store = createStore(providerReducer, applyMiddleware(thunk));

ReactDOM.render((
  <Provider store={store}>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </Provider>), document.getElementById('root'))
