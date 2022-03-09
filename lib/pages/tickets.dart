import 'package:air_app_ui/pages/profile.dart';
import 'package:air_app_ui/pages/search.dart';
import 'package:air_app_ui/utils/styles.dart';
import 'package:air_app_ui/widgets/home_list.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTitle("Tickets"),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
            child: Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  customContainer(
                      "Upcoming",
                      const Color(0xFF222969),
                      Colors.white,
                      const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0))),
                  customContainer(
                      "Previous",
                      Colors.grey.shade500,
                      const Color(0xFFF4F6FD),
                      const BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0))),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Container(
              width: double.infinity,
              height: 460.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(color: Colors.grey.shade200, width: 2.0)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "NYC",
                                style: Styles().ticketstyle1,
                              ),
                              Text(
                                "New-York",
                                style: Styles().ticketstyle2,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Transform.rotate(
                                  angle: 20.0,
                                  child: const Icon(
                                    Icons.airplanemode_active_sharp,
                                    color: Color(0xFF4066EA),
                                  )),
                              Text(
                                "8H 30M",
                                style: Styles().ticketstyle2,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "LDN",
                                style: Styles().ticketstyle1,
                              ),
                              Text(
                                "London",
                                style: Styles().ticketstyle2,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    DottedLine(
                      dashLength: 5.0,
                      lineLength: 330,
                      dashColor: Colors.grey.shade300,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "1 May",
                                style: Styles().ticketstyle1,
                              ),
                              Text(
                                "Date",
                                style: Styles().ticketstyle2,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "08:00 AM",
                                style: Styles().ticketstyle1,
                              ),
                              Text(
                                "Departure Time",
                                style: Styles().ticketstyle2,
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "23",
                                style: Styles().ticketstyle1,
                              ),
                              Text(
                                "Number",
                                style: Styles().ticketstyle2,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    customDivider(),
                    buildContainerText(
                      "Flutter Dash",
                      "Passenger",
                      "5221 478566",
                      "Passport",
                    ),
                    customDivider(),
                    buildContainerText(
                      "0055 444 77147",
                      "Number of E-ticket",
                      "B2SG28",
                      "Booking code",
                    ),
                    customDivider(),
                    buildContainerText(
                      "VISA***2462",
                      "Payment method",
                      "249.99",
                      "Price",
                    ),
                    customDivider(),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: BarcodeWidget(
                            drawText: false,
                            color: const Color(0xFF222969),
                            barcode:
                                Barcode.code128(), // Barcode type and settings
                            data: 'https//github.com/martinoyovo', // Content
                            width: double.infinity,
                            height: 70,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Container(
              width: 380.0,
              child: TicketMaterial(
                useAnimationScaleOnTap: false,
                radiusBorder: 10.0,
                height: 200,
                colorBackground: const Color(0xFFF37B67),
                leftChild: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customListText("London", "NewYork"),
                        customListText("22", "Number")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customListText("08.00 AM", "Departure time"),
                        customListText("1 May", "Date")
                      ],
                    ),
                  ],
                )),
                rightChild: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "LDN",
                      style: Styles().textstyle,
                    ),
                    const Icon(
                      Icons.airplanemode_active_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "NYC",
                      style: Styles().textstyle,
                    )
                  ],
                )),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}

customDivider() {
  return Divider(
    indent: 15.0,
    endIndent: 20.0,
    color: Colors.grey.shade300,
  );
}
