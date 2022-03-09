import 'package:flutter/material.dart';

class Styles {
  var goodMorning = TextStyle(
      fontSize: 18.0, color: Colors.grey.shade500, fontWeight: FontWeight.bold);
  var fldash = const TextStyle(
      fontSize: 25.0, color: Color(0xFF222969), fontWeight: FontWeight.bold);
  var search = const TextStyle(
      fontSize: 16.0, color: Colors.grey, fontWeight: FontWeight.bold);

  var rightText = const TextStyle(
      fontSize: 21.0, fontWeight: FontWeight.bold, color: Color(0xFF222969));

  var leftText = const TextStyle(
      fontSize: 17.0, fontWeight: FontWeight.bold, color: Color(0xFF4066EA));
  var textstyle = const TextStyle(color: Colors.white, fontSize: 16.0);
  var containerBorder = BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 10.0,
        )
      ],
      border: Border.all(
        color: Colors.grey.shade300,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(25.0));

  var hotellist = const TextStyle(
      color: Color(0xFF222969), fontSize: 20.0, fontWeight: FontWeight.bold);
  var hotellist2 = TextStyle(
      color: Colors.grey.shade500, fontSize: 14.0, fontWeight: FontWeight.bold);

  var searchTitleStyle = const TextStyle(
      color: Color(0xFF222969), fontWeight: FontWeight.bold, fontSize: 30.0);

  var customContainer2 = const TextStyle(
      color: Color(0xFF222969), fontWeight: FontWeight.bold, fontSize: 17.0);
  var ticketstyle1 = const TextStyle(
      color: Color(0xFF222969), fontSize: 16.0, fontWeight: FontWeight.w600);
  var ticketstyle2 = TextStyle(
    color: Colors.grey.shade500,
    fontWeight: FontWeight.bold,
  );
}
