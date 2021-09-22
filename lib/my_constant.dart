import 'package:flutter/material.dart';

class MyConstant {
  static String appName = "Shaman";

  static String routeAuthen = '/authen';
  static String routeCreateAccount = 'createAccount';
  static String routeHostService = 'hostService';
  static String routeCustomerService = 'customeService';

  static String image1 = 'img/meet.png';
  static String imageq2 = 'img/rom.png';
  static String image3 = 'img/pana.png';
  static String image4 = 'img/ticketshow.png';
  static String image5 = 'img/ticketsell.png';
  static String image6 = 'img/waiting.png';
  static String image7 = 'img/pumpmask.png';
  static String image8 = 'img/panamask.png';
  static String image9 = 'img/herrer.png';
  static String image10 = 'img/herrer2.png';
  static String image11 = 'img/herrer3.png';
  static String image12 = 'img/bully.png';
  static String image13 = 'img/q1.png';
  static String image14 = 'img/q2.png';
  static String image15 = 'img/find.png';
  static String image16 = 'img/team.png';
  static String image17 = 'img/money.png';
  static String image18 = 'img/cat.png';

  static Color yp = Color(0xf9a825);
  static Color yl = Color(0xffd95a);
  static Color yd = Color(0xc17900);
  static Color ysp = Color(0xf9bf2d);
  static Color ysl = Color(0xfff163);
  static Color ysd = Color(0xc28f00);
  static Color dark = Color(0xff575900);

  TextStyle h1() => TextStyle(
        fontSize: 24,
        color: dark,
        fontWeight: FontWeight.bold,
      );
  TextStyle h2() => TextStyle(
        fontSize: 18,
        color: dark,
        fontWeight: FontWeight.w700,
      );
  TextStyle h3() => TextStyle(
        fontSize: 14,
        color: dark,
        fontWeight: FontWeight.normal,
      );
  ButtonStyle mybtstyle() => ElevatedButton.styleFrom(
        primary: MyConstant.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );
}
