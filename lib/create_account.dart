import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaman/utility/my_constant.dart';
import 'package:shaman/widgets/show_img.dart';
import 'package:shaman/widgets/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser;
  bool statusRedEye = true;
  String? typeSex;

  String? name, lastname, username, password, birthday, phone, address, email;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {}
            },
            icon: Icon(Icons.cloud_upload),
          )
        ],
        title: Text('Create New Account'),
        backgroundColor: MyConstant.yp,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Form(
          key: formKey,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              buildImg(size),
              buildTitle1('ข้อมูลทั่วไป'),
              buildUserName(size),
              buildPassWord(size),
              buildName(size),
              buildTitle1('Type'),
              buildRadioCustomer(size),
              buildRadioHost(size),
              buildTitle1('ข้อมูลพื้นฐาน'),
              buildLastName(size),
              buildAddress(size),
              buildBirthday(),
              buildEmail(size),
              buildPhone(size),
              buildTitle1('Sex'),
              buildRadioMale(size),
              buildRadioFemale(size),
              buildRegister(size)
            ],
          ),
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
            onChanged: (value) {
              typeUser = value as String?;
              setState(() {});
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
            key: Key("username"),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter User Name';
              } else {}
            },
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter Name';
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: MyConstant().h3(),
              labelText: 'Name: ',
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

  Row buildLastName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter Last Name';
              } else {}
            },
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter Email';
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: MyConstant().h3(),
              labelText: 'Email: ',
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

  Row buildPhone(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter Your phone number';
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: MyConstant().h3(),
              labelText: 'Phone: ',
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

  Row buildReligion(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter Your Religion';
              } else {}
            },
            decoration: InputDecoration(
              labelStyle: MyConstant().h3(),
              labelText: 'Religion: ',
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

  Container buildBirthday() {
    return Container(
      height: 200,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: DateTime(1969, 1, 1),
        onDateTimeChanged: (DateTime newDateTime) {
          // Do something
        },
      ),
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
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter Your Password';
              } else {}
            },
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

  Row buildAddress(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter Your Address';
              } else {}
            },
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

  Row buildRegister(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          width: size * 0.6,
          child: ElevatedButton(
              style: MyConstant().mybtstyle(),
              onPressed: () {
                print(
                    'Username =$username ,password = $password , name = $name , lastname = $lastname , email = $email , birthday = $birthday, type = $typeUser , sex = $typeSex');
                if (username == null ||
                    password == null ||
                    name == null ||
                    lastname == null ||
                    email == null ||
                    username == '' ||
                    password == '' ||
                    name == '' ||
                    lastname == '' ||
                    email == '') {
                  print('Have Spece');
                } else if (typeUser == null ||
                    typeSex == null ||
                    typeSex == '' ||
                    typeUser == '') {}
              },
              child: Text('REGISTER')),
        )
      ],
    );
  }

  Row buildRadioMale(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
            value: 'Male',
            groupValue: typeSex,
            onChanged: (Value) {
              setState(() {
                typeSex = Value as String?;
              });
            },
            title: ShowTitle(
              title: 'Male',
              textStyle: MyConstant().h3(),
            ),
          ),
        ),
      ],
    );
  }

  Row buildRadioFemale(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
            value: 'Female',
            groupValue: typeSex,
            onChanged: (Value) {
              setState(() {
                typeSex = Value as String?;
              });
            },
            title: ShowTitle(
              title: 'Female',
              textStyle: MyConstant().h3(),
            ),
          ),
        ),
      ],
    );
  }

  Row buildImg(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.3,
          child: ShowImaege(
            path: MyConstant.image19,
          ),
        ),
      ],
    );
  }
}
