import 'package:flutter/material.dart';
import 'package:pilgrimage_app/screen/travel/widgets_travel/ticketCard.dart';

class travelFlightTickets extends StatefulWidget {
  const travelFlightTickets({Key? key}) : super(key: key);

  @override
  _travelFlightTicketsState createState() => _travelFlightTicketsState();
}

class _travelFlightTicketsState extends State<travelFlightTickets> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      shrinkWrap: true,
      children: <Widget> [
        TicketCard(
          price: 123,
          originCode: 'TRZ',
          destinationCode: 'MAA',
          departureTime: '2:55 pm',
          arrivalTime: '8:20 pm',
          totalTime: '13 h 25 min',
          ticketType: true,
        ),
        TicketCard(
          price: 634,
          originCode: 'MAA',
          destinationCode: 'VTZ',
          departureTime: '2:55 pm',
          arrivalTime: '8:20 pm',
          totalTime: '13 h 25 min',
          ticketType: false,
        ),
        TicketCard(
          price: 13,
          originCode: 'VTZ',
          destinationCode: 'CA(LXS)',
          departureTime: '2:55 pm',
          arrivalTime: '8:20 pm',
          totalTime: '13 h 25 min',
          ticketType: true,
        ),
        TicketCard(
          price: 123,
          originCode: 'ODS',
          destinationCode: 'IXT',
          departureTime: '2:55 pm',
          arrivalTime: '8:20 pm',
          totalTime: '13 h 25 min',
          ticketType: true,
        ),
        TicketCard(
          price: 123,
          originCode: 'IXT',
          destinationCode: 'GAU',
          departureTime: '2:55 pm',
          arrivalTime: '8:20 pm',
          totalTime: '13 h 25 min',
          ticketType: false,
        ),
        TicketCard(
          price: 123,
          originCode: 'GAU',
          destinationCode: 'PAT',
          departureTime: '2:55 pm',
          arrivalTime: '8:20 pm',
          totalTime: '13 h 25 min',
          ticketType: true,
        ),
      ],
    ));
  }
}
