import BigCalendar from 'react-big-calendar';
import moment from 'moment';
import React, { Component } from 'react';
import data from '../data';
import {Card, Row, Col, Container, Modal, Button, Collection, CollectionItem} from 'react-materialize';
import { connect } from 'react-redux'

const slotUrl = 'http://localhost:3000/api/v1/slots'
const providerUrl = 'http://localhost:3000/api/v1/providers/'



BigCalendar.momentLocalizer(moment);

class ProviderCalendar extends Component {

  state = {
    start: "start",
    end: "end",
    provider_name: "",
    provider: {},
    slots: [],
    slot: {}
  }

  componentDidMount () {
    fetch(providerUrl + this.props.match.params.id)
      .then(r => r.json())
      .then(provider => {
          this.setState({
            ...this.state,
            provider_name: provider.name
          });
      })
    fetch(slotUrl)
     .then(r => r.json())
     .then(slots => {
       let filteredSlots = slots.filter(slot => (slot.provider_id).toString() === this.props.match.params.id)
       this.setState({
         ...this.state,
         slots: this.formatSlots(filteredSlots)
       })
       this.props.dispatch({
         type: 'LOAD_SLOTS',
         payload: this.formatSlots(filteredSlots)
      })
    })
  }

  formatSlots = (slots) => {
    const newSlots = slots.map((finalSlot) => {
      finalSlot.start = new Date(finalSlot.start);
      finalSlot.end = new Date(finalSlot.end);
      return finalSlot
      });
    return newSlots
  }

  handleSlot = (slot) => {
    let slots = JSON.parse(localStorage.getItem("slotData"));
    if (slots === null || typeof slots !== 'object') {
      slots = [];
    }
    slots.push(this.state.slot);
    
    localStorage.setItem('slotData', JSON.stringify(slots));
    window.location = "/appointments";
  }

  render() {
    console.log('slots', this.props.slots)
    let appointmentLink = "/appointments/" + this.state.slot.id;
    return(
  <Container m={12}>
    <Modal
      id='form'
      header={this.state.provider.name}>
      <div>
        <Collection>
          <CollectionItem>Address: {this.state.provider.address}</CollectionItem>
          <CollectionItem>Start Time : {this.state.start}</CollectionItem>
          <CollectionItem>End Time : {this.state.end}</CollectionItem>
        </Collection>
        <div className="centered">
            <Button waves='light' onClick={this.handleSlot}>Confirm</Button>
        </div>
      </div>
    </Modal>
    <Row m={6}>

      <h3>{this.state.provider_name}</h3>
    <br/>
    <BigCalendar
    events={this.state.slots}
    step={12}
    timeslots={10}
    defaultView={BigCalendar.Views.WEEK}
    defaultDate={new Date()}
    onSelectEvent={this.handleClick}
    />
    </Row>
  </Container>
  )}

  formatDate = (d) => {
      let timePeriod = "AM";
      let hour = parseInt(d.getHours());
      let finalHour = d.getHours();
      if (hour > 12) {
       timePeriod = "PM";
       finalHour = hour - 12;
     } else if (hour === 12) {
       timePeriod = "PM";
     } else if (hour === 0) {
       finalHour = "12";
      }

      return [(d.getMonth()+1).padLeft(),
                 d.getDate().padLeft(),
                 d.getFullYear()].join('/') +' ' +
                [finalHour.padLeft(),
                 d.getMinutes().padLeft(),
                 d.getSeconds().padLeft()].join(':') + ' ' + timePeriod
                 ;
  }

  fetchProviderInfo = (id) => {
      fetch(providerUrl + id)
        .then(response => response.json())
        .then(provider => {
          this.setState({
            ...this.state,
            provider
          });
        });
  }

  handleClick = (slot) => {
    this.fetchProviderInfo(slot.provider_id);
    this.setState({
        ...this.state,
        slot,
        start: this.formatDate(slot.start),
        end: this.formatDate(slot.end)
    });
    window.$('#form').modal('open');
    console.log(slot);
  }

}

const mapStateToProps = (state) => {
  return { slots: state.slots }
}

export default connect(mapStateToProps)(ProviderCalendar);
