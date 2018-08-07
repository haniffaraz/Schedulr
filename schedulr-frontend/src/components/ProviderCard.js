import React, { Component } from 'react';
import {Card, Row, Col, Container, CardTitle} from 'react-materialize';
import 'react-big-calendar/lib/css/react-big-calendar.css'

class ProviderCard extends Component {

  render() {
    console.log(this.props);
    const link = `/provider/${this.props.provider.id}`
    console.log(link);
    return (

    <Col s={6}>
      <Card horizontal header={<CardTitle image={this.props.provider.img_url}></CardTitle>} actions={[<a href={link}>Book An Appointment </a>]}>
          <h3>{this.props.provider.name}</h3>
          <h7>Address: {this.props.provider.address}</h7>
          <h5>{this.props.provider.specialty}</h5>
        </Card>
    </Col>

    );
  }
}

export default ProviderCard;
