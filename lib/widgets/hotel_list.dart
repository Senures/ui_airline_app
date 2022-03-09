import 'package:air_app_ui/model/hotellist_model.dart';
import 'package:air_app_ui/utils/styles.dart';
import 'package:flutter/material.dart';

class Hotellist extends StatelessWidget {
  const Hotellist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240.0,
        //color: Colors.white,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotellist.length,
            itemBuilder: (context, index) {
              var item = hotellist[index];
              return Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 230.0,
                  decoration: Styles().containerBorder,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 220.0,
                          height: 140.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(item.imgUrl))),
                        ),
                        Text(item.name, style: Styles().hotellist),
                        Text(item.city, style: Styles().hotellist2)
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
