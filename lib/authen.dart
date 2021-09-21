import 'package:flutter/material.dart';
import 'package:shaman/my_constant.dart';
import 'package:shaman/widgets/show_img.dart';
import 'package:shaman/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            buildImg(size),
            buildAppName(),
            buildUser(size),
            buildPass(size),
          ],
        ),
      ),
    );
  }

  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3(),
              labelText: 'User: ',
              prefixIcon:
                  Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyConstant.dark,
                  ),
                  borderRadius: BorderRadius.circular(30)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyConstant.yl),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
      ],
    );
  }

  Row buildPass(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            obscureText: statusRedEye,
            decoration: InputDecoration(
              labelStyle: MyConstant().h3(),
              labelText: 'Password: ',
              prefixIcon: Icon(Icons.lock_outline, color: MyConstant.dark),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyConstant.dark,
                  ),
                  borderRadius: BorderRadius.circular(30)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyConstant.yl),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
      ],
    );
  }

  Row buildAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(title: MyConstant.appName, textStyle: MyConstant().h1()),
      ],
    );
  }

  Row buildImg(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: ShowImaege(
            path: MyConstant.image18,
          ),
        ),
      ],
    );
  }
}
