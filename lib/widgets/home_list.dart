import 'package:air_app_ui/model/home_list_model.dart';
import 'package:air_app_ui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

class HomeList extends StatefulWidget {
  HomeList({Key? key}) : super(key: key);

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.0,
        //color: Colors.white,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: homelist.length,
            itemBuilder: (context, index) {
              var item = homelist[index];
              return Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  width: 300.0,
                  child: TicketMaterial(
                    useAnimationScaleOnTap: false,
                    radiusBorder: 10.0,
                    height: 100,
                    colorBackground: const Color(0xFFF37B67),
                    leftChild: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            customListText("London", "New-York"),
                            customListText(item.number, "Number")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            customListText(item.time, "Departure time"),
                            customListText(item.date, "Date")
                          ],
                        ),
                      ],
                    )),
                    rightChild: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          item.lcityshort,
                          style: Styles().textstyle,
                        ),
                        const Icon(
                          Icons.airplanemode_active_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          item.rcityshort,
                          style: Styles().textstyle,
                        )
                      ],
                    )),
                  ),
                ),
              );
            }));
  }
}

customListText(String title, String fill) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        title,
        style: Styles().textstyle,
      ),
      Text(
        fill,
        style: Styles().textstyle,
      ),
    ],
  );
}
