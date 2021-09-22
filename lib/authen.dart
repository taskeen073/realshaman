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
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          behavior: HitTestBehavior.opaque,
          child: ListView(
            children: [
              buildImg(size),
              buildAppName(),
              buildUser(size),
              buildPass(size),
              buildLogin(size),
              buildTitle(),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTitle() {
    return Row(mainAxisAlignment:MainAxisAlignment.center,
              children: [
                ShowTitle(title:'Non Account ?',textStyle: MyConstant().h3(),),
             
            TextButton(onPressed: (){}, child: Text('CreateAccount')) ],
            );
  }


  Row buildLogin(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          width: size * 0.6,
          child: ElevatedButton(
              style: MyConstant().mybtstyle(),
              onPressed: () {},
              child: Text('login')),
        )
      ],
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
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      statusRedEye = !statusRedEye;
                    });
                  },
                  icon: statusRedEye
                      ? Icon(Icons.remove_red_eye, color: MyConstant.dark)
                      : Icon(Icons.remove_red_eye_outlined,
                          color: MyConstant.dark)),
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
