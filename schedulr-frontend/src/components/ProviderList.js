import React, { Component } from 'react';
import { connect } from 'react-redux';
import ProviderCard from './ProviderCard';
import {Card, Row, Col, Container, CardTitle} from 'react-materialize';

const baseUrl = 'http://localhost:3000/api/v1/providers'


class ProviderList extends Component {

  componentDidMount () {
    fetch(baseUrl)
     .then(r => r.json())
     .then(providers =>
       this.props.dispatch({
         type: 'LOAD_PROVIDERS',
         payload: providers
       })
      )
    }

  render() {
    const providers = this.props.providers.map(provider => {
      return <ProviderCard key={provider.id} provider={provider}/>
    })
    return (
      <Row s={12}>
        {providers}
      </Row>
    );
  }
}
  const mapStateToProps = (state) => {
    return { providers: state.providers }
  }

export default connect(mapStateToProps)(ProviderList);
