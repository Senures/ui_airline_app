import 'package:air_app_ui/widgets/sized_box.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSection1(),
              customSizedBox(height: 10.0),
              Divider(
                indent: 15.0,
                endIndent: 20.0,
                color: Colors.grey.shade300,
              ),
              buildSection2(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                child: Text(
                  "Accumulated miles",
                  style: TextStyle(
                      color: Color(0xFF222969),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Container(
                  width: double.infinity,
                  //height: 320.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            spreadRadius: 1.0,
                            color: Colors.grey.shade300),
                      ]),
                  child: Column(
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "192802",
                            style: TextStyle(
                                color: Color(0xFF222969),
                                fontSize: 40.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Miles accured",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("23 May 2021",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        ),
                      ),
                      Divider(
                        indent: 15.0,
                        endIndent: 20.0,
                        color: Colors.grey.shade300,
                      ),
                      buildContainerText(
                          "23 042", "Miles", "Airline CO", "Received from"),
                      customSizedBox(height: 10.0),
                      DottedLine(
                        dashLength: 5.0,
                        lineLength: 330,
                        dashColor: Colors.grey.shade300,
                      ),
                      buildContainerText(
                          "24", "Miles", "McDonald's", "Received from"),
                      customSizedBox(height: 10.0),
                      DottedLine(
                        lineLength: 330,
                        dashColor: Colors.grey.shade300,
                      ),
                      buildContainerText(
                          "52 340", "Miles", "Exuma", "Received from"),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Center(
                          child: Text(
                            "How to get more miles",
                            style: TextStyle(
                                color: Color(0xFF4066EA),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

buildContainerText(String t1, String t2, String t3, String t4) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t1,
              style: const TextStyle(
                  color: Color(0xFF222969),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            customSizedBox(height: 5.0),
            Text(
              t2,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              t3,
              style: const TextStyle(
                  color: Color(0xFF222969),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600),
            ),
            customSizedBox(height: 5.0),
            Text(
              t4,
              style: TextStyle(
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

buildSection1() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 90.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 90.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://lh3.googleusercontent.com/wEpdmU0qYb6-FPLeAwhPGpOG9x9YNz5bXKy1DiLled1xr5HtqwFYAUGIfnr7nNgoKN20WhBQTTs1XoC9aLDUDXx1VkjqEAWgLoaSXWbyek3pkltmYDRaNgPvmcswzZFUg95qDYcURfo=w400")),
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xFFF37B67),
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Flutter Dash",
                    style: TextStyle(
                        color: Color(0xFF222969),
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0),
                  ),
                  Text("New-York",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    height: 30.0,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFEF4F3),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                            maxRadius: 11.0,
                            backgroundColor: Color(0xFFF37B67),
                            child: Icon(
                              Icons.security,
                              size: 16.0,
                              color: Colors.white,
                            )),
                        Text(
                          "Premium status",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF37B67),
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
        Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Edit",
                style: TextStyle(
                    color: Color(0xFF4066EA),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500),
              ),
            ))
      ],
    ),
  );
}

buildSection2() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: Container(
      width: double.infinity,
      height: 90.0,
      decoration: BoxDecoration(
          color: const Color(0xFF4066EA),
          borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              maxRadius: 25.0,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.lightbulb_rounded,
                size: 25.0,
                color: Color(0xFFF37B67),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Container(
              height: 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "You've got a new award",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("You have 150 flights in a year",
                      style: TextStyle(color: Colors.white, fontSize: 16.0))
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
