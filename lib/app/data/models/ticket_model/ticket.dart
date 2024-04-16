class Ticket {
  String company; // компания турагенство
  String city; // город куда отправляется
  DateTime data; // дата отправления
  int departure; // время отправления
  Ticket(this.company, this.city, this.data, this.departure); //  
}




// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'ticket.freezed.dart';
// part 'ticket.g.dart';

// @freezed
// class Ticket with _$Ticket {

//   factory Ticket({
//     required String company,
//     required String city,
//     required DateTime data,
//     required int departure,
//   }) = _Ticket;

//   factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
// }