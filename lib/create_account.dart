import 'package:flutter/material.dart';
import 'package:shaman/my_constant.dart';
import 'package:shaman/widgets/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser;
  Row buildName(double size) {
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

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: MyConstant.yp,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildTitle1('normal'),
          buildName(size),
          buildTitle1('Type'),
          buildRadioCustomer(size),
          buildRadioHost(size),
        ],
      ),
    );
  }

  Row buildRadioHost(double size) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: size * 0.6,
          child: RadioListTile(
            value: 'Host',
            groupValue: typeUser,
            onChanged: (Value) {
              setState(() {
                typeUser = Value as String?;
              });
            },
            title: ShowTitle(
              title: 'Host',
              textStyle: MyConstant().h3(),
            ),
          ),
        ),
      ],
    );
  }

  Row  buildRadioCustomer(double size) {
    return Row(mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Container(width: size* 0.6,
          child: RadioListTile(
            value: 'customer',
            groupValue: typeUser,
            onChanged: (Value) {
              setState(() {
                typeUser = Value as String?;
              });
            },
            title: ShowTitle(
              title: 'customer',
              textStyle: MyConstant().h3(),
            ),
          ),
        ),
      ],
    );
  }

  Container buildTitle1(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: ShowTitle(
        title: title,
        textStyle: MyConstant().h2(),
      ),
    );
  }
}
