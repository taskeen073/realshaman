import 'package:flutter/material.dart';
import 'package:shaman/authen.dart';
import 'package:shaman/create_account.dart';
import 'package:shaman/customer_service.dart';
import 'package:shaman/host_service.dart';
import 'package:shaman/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  '/hostService': (BuildContext context) => HostService(),
  '/customerService': (BuildContext context) => CustomerService(),
};

String? initlalRoute;
void main() {
  initlalRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
