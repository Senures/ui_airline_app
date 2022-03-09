import 'package:air_app_ui/utils/styles.dart';
import 'package:air_app_ui/widgets/home_list.dart';
import 'package:air_app_ui/widgets/hotel_list.dart';
import 'package:air_app_ui/widgets/sized_box.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            customSizedBox(height: 40.0),
            customHomeTitle(),
            customSizedBox(height: 20.0),
            customSearchContainer(),
            customSizedBox(height: 20.0),
            customText("Upcoming Flights", "View all"),
            HomeList(),
            customSizedBox(height: 20.0),
            customText("Hotels", "View all"),
            const Hotellist(),
          ],
        ),
      ),
    ));
  }
}

customHomeTitle() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 18.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good  Morning", style: Styles().goodMorning),
            Text("Flutter  Dash", style: Styles().fldash)
          ],
        ),
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://lh3.googleusercontent.com/wEpdmU0qYb6-FPLeAwhPGpOG9x9YNz5bXKy1DiLled1xr5HtqwFYAUGIfnr7nNgoKN20WhBQTTs1XoC9aLDUDXx1VkjqEAWgLoaSXWbyek3pkltmYDRaNgPvmcswzZFUg95qDYcURfo=w400")),
              color: const Color(0xFFF37B67),
              borderRadius: BorderRadius.circular(10.0)),
        )
      ],
    ),
  );
}

customSearchContainer() {
  return Container(
    width: 365.0,
    height: 50.0,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text("Search", style: Styles().search),
          )
        ],
      ),
    ),
    decoration: BoxDecoration(
        color: const Color(0xFFF4F6FD),
        borderRadius: BorderRadius.circular(10.0)),
  );
}

customText(String rightext, String lefttext) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(rightext, style: Styles().rightText),
      TextButton(
        onPressed: () {},
        child: Text(
          lefttext,
          style: Styles().leftText,
        ),
      )
    ]),
  );
}
