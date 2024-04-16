class Card {
  int number; // номер карты 
  DateTime created; // когда была создана
  DateTime expiration; // дата когда выйдет срок пользования
  String name; // имя носильщика
  String surname; // фамилия носильщика
  String bankUrl; // название банка, картинка
  int validation; // три циферки позади карты
  Card(this.number, this.created, this.expiration, this.name, this.surname, this.bankUrl, this.validation ); //  
}


// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'card.freezed.dart';
// part 'card.g.dart';

// @freezed
// class Card with _$Card {

//   factory Card({
//     required int number,
//     required DateTime created,
//     required DateTime expiration,
//     required String name,
//     required String surname,
//     required String bank,
//     required int validation,

//   }) = _Card;

//   factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
// }