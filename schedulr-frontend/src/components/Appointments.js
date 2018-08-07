import React from 'react';
import {Card, Row, Col, Container, Modal, Button, Collection, CollectionItem} from 'react-materialize';

const slotUrl = 'http://localhost:3000/api/v1/slots'
const userId = "1";


class Appointments extends React.Component {

  state = {
    slots: []
  }

  componentDidMount () {


    // fetch(slotUrl)
    //   .then(response => response.json())
    //   .then(slots  => {
    //     let filteredSlots = slots.filter(slot => {
    //       if (slot.user_id === null) {
    //         return false;
    //       }
    //       return (slot.user_id).toString() === userId
    //     });
    //     this.setState({
    //       slots: JSON.parse(localStorage.getItem("slotData"))
    //     });
    //   });

        this.setState({
          slots: JSON.parse(localStorage.getItem("slotData"))
        });
    // console.log(slotId)
  }

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
                 d.getMinutes().padLeft()].join(':') + ' ' + timePeriod
                 ;
  }

  deleteSlot = (slotId) => (e) =>{
      console.log(slotId);
      console.log(this.props);
      let slots = JSON.parse(localStorage.getItem("slotData"));
      console.log(slots);
      console.log(slotId);
      let filteredSlots = slots.filter(slot => (slot.id).toString() !== slotId.toString());
      localStorage.setItem("slotData", JSON.stringify(filteredSlots));
      this.setState({
        slots: filteredSlots
      })
      console.log("dumbbbb")
  }

  render () {

    const slots = this.state.slots.map(slot => {
      return (
        <Col m={4}>
        <Card className='light-blue darken-1' textClassName='white-text' title='Appointment' actions={[<a data-element={typeof(slot.id) === "object" ? slot.id : "" } onClick={this.deleteSlot(slot.id)}>Time: {this.formatDate(new Date(slot.start))} <Button floating large className='red remove-button' waves='light' icon='remove' /></a>]}>
        </Card>
      </Col>

      )
    })
    return (
        <Row m={12}>
          {slots}
        </Row>

      )
    }
  }



export default Appointments;
