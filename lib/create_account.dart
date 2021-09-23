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

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: MyConstant.yp,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildTitle1('ข้อมูลทั่วไป'),
            buildName(size),
            buildTitle1('Type'),
            buildRadioCustomer(size),
            buildRadioHost(size),
            buildTitle1('ข้อมูลพื้นฐาน'),
            buildLastName(size),
            buildAddress(size),
            buildBirthDay(size),
            buildEmail(size),
            buildPhone(size),
            buildPhone(size),
            buildSex(size),
            buildUserName(size),
            buildPassWord(size),
            buildLogin(size)
          ],
        ),
      ),
    );
  }

  Row buildRadioHost(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
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

  Row buildRadioCustomer(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
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

  Row buildUserName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3(),
              labelText: 'UserName: ',
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

  Row buildName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Name :',
              hintStyle: MyConstant().h3(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child:
                    Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              ),
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

  Row buildLastName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3(),
              labelText: 'LastName: ',
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

  Row buildEmail(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Email :',
              hintStyle: MyConstant().h3(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child:
                    Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              ),
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

  Row buildPhone(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Phone :',
              hintStyle: MyConstant().h3(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child:
                    Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              ),
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

  Row buildAddress(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Address :',
              hintStyle: MyConstant().h3(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child:
                    Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              ),
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

  Row buildBirthDay(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'BirthDay :',
              hintStyle: MyConstant().h3(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child:
                    Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              ),
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

  Row buildReligion(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Religion :',
              hintStyle: MyConstant().h3(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child:
                    Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              ),
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

  Row buildSex(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Sex :',
              hintStyle: MyConstant().h3(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child:
                    Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              ),
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

  Row buildPassWord(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'PassWord :',
              hintStyle: MyConstant().h3(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child:
                    Icon(Icons.account_circle_outlined, color: MyConstant.dark),
              ),
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
}
