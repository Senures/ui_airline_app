import 'package:air_app_ui/pages/home.dart';
import 'package:air_app_ui/utils/styles.dart';
import 'package:air_app_ui/widgets/sized_box.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTitle("What are\n you looking for?"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      customContainer(
                          "Airline Tickets",
                          const Color(0xFF222969),
                          Colors.white,
                          const BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0))),
                      customContainer(
                          "Hotels",
                          Colors.grey.shade500,
                          const Color(0xFFF4F6FD),
                          const BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0))),
                    ],
                  ),
                ),
              ),
              customSizedBox(height: 20.0),
              customContainer2(
                "Departure",
                Icons.flight_takeoff_rounded,
              ),
              customSizedBox(height: 20.0),
              customContainer2("Arrival", Icons.flight_land_rounded),
              elevatedButton(
                context: context,
                callback: () {},
                text: 'Find tickets',
              ),
              customSizedBox(height: 10.0),
              customText("Upcoming Flights", "View all"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 170.0,
                      height: 340.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              width: 130.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.red,
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2017/02/27/23/36/aircraft-2104594_960_720.jpg"))),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "20% discount on business class ticketsfrom Airline On International",
                                style: TextStyle(
                                    color: Color(0xFF222969), fontSize: 17.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          width: 170.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Discount\nfor survey",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                                Text(
                                    "Take the survey about our services and get\n a discount",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0))
                              ],
                            ),
                          ),
                        ),
                        customSizedBox(height: 15.0),
                        Container(
                          width: 170.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                              color: const Color(0xFFEC6545),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text("Take love",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0)),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "😍",
                                    style: TextStyle(fontSize: 25.0),
                                  ),
                                  Text(
                                    "🥰",
                                    style: TextStyle(fontSize: 35.0),
                                  ),
                                  Text(
                                    "😘",
                                    style: TextStyle(fontSize: 25.0),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

customTitle(String text) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Text(
      text,
      style: Styles().searchTitleStyle,
    ),
  );
}

customContainer(String text, Color textcolor, Color background,
    BorderRadiusGeometry border) {
  return Container(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
      ),
      width: 175.0,
      height: 35.0,
      decoration: BoxDecoration(
          color: background,
          border: Border.all(color: const Color(0xFFF4F6FD), width: 3.0),
          borderRadius: border));
}

customContainer2(String text, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFFBFC2D5)),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(text, style: Styles().customContainer2),
            )
          ],
        ),
      ),
      width: 360.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
              spreadRadius: 1, blurRadius: 2.0, color: Colors.grey.shade200)
        ],
      ),
    ),
  );
}

elevatedButton({
  required BuildContext context,
  required VoidCallback callback,
  required String text,
}) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Container(
      width: double.infinity,
      child: ElevatedButton(
          child: Text(text),
          style: ElevatedButton.styleFrom(
              primary: const Color(0xff303f9f),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 17),
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16)),
          onPressed: callback),
    ),
  );
}
