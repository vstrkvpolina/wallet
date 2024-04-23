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