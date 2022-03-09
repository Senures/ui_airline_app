class HotelModel {
  String imgUrl;
  String name;
  String city;
  HotelModel({required this.imgUrl, required this.name, required this.city});
}

List<HotelModel> hotellist = [
  HotelModel(
      imgUrl:
          "https://cdn.pixabay.com/photo/2016/02/19/20/57/iceland-1211171_960_720.jpg",
      name: "Open Space",
      city: "London"),
  HotelModel(
      imgUrl:
          "https://cdn.pixabay.com/photo/2018/02/24/17/17/window-3178666__340.jpg",
      name: "Global Will",
      city: "London"),
  HotelModel(
      imgUrl:
          "https://cdn.pixabay.com/photo/2014/12/10/06/49/venetian-562762__340.jpg",
      name: "Open Space",
      city: "London"),
  HotelModel(
      imgUrl:
          "https://cdn.pixabay.com/photo/2018/08/03/19/42/london-3582649_960_720.jpg",
      name: "Open Space",
      city: "London"),
  HotelModel(
      imgUrl:
          "https://cdn.pixabay.com/photo/2016/02/19/20/57/iceland-1211171_960_720.jpg",
      name: "Open Space",
      city: "London")
];
