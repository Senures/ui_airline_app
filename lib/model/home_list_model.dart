class ListModel {
  String rcity;
  String rcityshort;
  String plate;
  String lcity;
  String lcityshort;
  String date;
  String time;
  String number;
  ListModel(
      {required this.rcity,
      required this.plate,
      required this.lcity,
      required this.date,
      required this.time,
      required this.number,
      required this.rcityshort,
      required this.lcityshort});
}

List<ListModel> homelist = [
  ListModel(
      rcity: "New-York",
      plate: "8H 30M",
      lcity: "London",
      date: "1 May",
      time: "08:00 AM",
      number: "23",
      rcityshort: "NYC",
      lcityshort: "LDN"),
  ListModel(
      rcity: "New-York",
      plate: "4H 70M",
      lcity: "London",
      date: "4 May",
      time: "09:00 AM",
      number: "63",
      rcityshort: "NYC",
      lcityshort: "LDN"),
  ListModel(
      rcity: "New-York",
      plate: "8H 30M",
      lcity: "London",
      date: "1 May",
      time: "08:00 AM",
      number: "23",
      rcityshort: "NYC",
      lcityshort: "LDN")
];
