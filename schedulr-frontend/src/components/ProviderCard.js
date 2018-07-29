import React, { Component } from 'react';
import {Card, Row, Col, Container} from 'react-materialize';
import ProviderCalendar from './ProviderCalendar'
import 'react-big-calendar/lib/css/react-big-calendar.css'

class ProviderCard extends Component {
  render() {
    return (
      <Container m={12}>

      <Row m={6}>
        <h3>Provider Name</h3>

      <ProviderCalendar></ProviderCalendar>
      </Row>

      </Container>
    );
  }
}

export default ProviderCard;
