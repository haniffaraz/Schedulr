import BigCalendar from 'react-big-calendar';
import moment from 'moment';
import React, { Component } from 'react';
import data from '../data';

BigCalendar.momentLocalizer(moment);

const ProviderCalendar = props => (
  <div>
    <BigCalendar
    events={data}
    step={15}
    timeslots={8}
    defaultView={BigCalendar.Views.WEEK}
    defaultDate={new Date(2015, 3, 12)}
  />
  </div>
);

export default ProviderCalendar;
