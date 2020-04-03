class Hotel {
  String imgUrl;
  String name;
  String address;
  int price;

  Hotel({this.imgUrl, this.name, this.address, this.price});
}

final List<Hotel> hotels = [
  Hotel(
      imgUrl: 'assets/images/prideinn.PNG',
      name: 'Pride Inn',
      address: 'Mombasa',
      price: 1200),
  Hotel(
      imgUrl: 'assets/images/sarova.PNG',
      name: 'Sarova Stanely',
      address: 'Nairobi',
      price: 1200),
  Hotel(
      imgUrl: 'assets/images/villarosa.PNG',
      name: 'VIlla Rosa',
      address: 'Nairobi',
      price: 1200),
  Hotel(
      imgUrl: 'assets/images/radission.PNG',
      name: 'Radisson',
      address: 'Nairobi',
      price: 1200),
];
