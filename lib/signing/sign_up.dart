import 'package:flutter/material.dart';
import 'validation_sign_in.dart';
import 'changepassword.dart';
import 'creat_user.dart';

class SignUp extends StatefulWidget {
  static String tag = 'login-page';

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<SignUp> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String fullname = '';
  String scfhsnumber = '';
  String phoneNumber = '';
  String workAdrres = '';
  String country = '';

  int selected = 0;

  void onChange(int value) {
    setState(() {
      selected = value;
    });

    print('Value : $value');
  }

  List<Widget> makeRadio() {
    List<Widget> list = new List<Widget>();
    list.add(Row(
      children: <Widget>[
        Radio(
          activeColor: Colors.orange,
          value: 0,
          groupValue: selected,
          onChanged: (int value) {
            onChange(value);
          },
        ),
        Text("Physician"),
      ],
    ));

    list.add(Row(
      children: <Widget>[
        Radio(
          activeColor: Colors.orange,
          value: 1,
          groupValue: selected,
          onChanged: (int value) {
            onChange(value);
          },
        ),
        Column(
          children: <Widget>[
            Text("Healthcare"),
            Text("Professional"),
          ],
        )
      ],
    ));

    list.add(Row(
      children: <Widget>[
        Radio(
          activeColor: Colors.orange,
          value: 2,
          groupValue: selected,
          onChanged: (int value) {
            onChange(value);
          },
        ),
        Text("Student"),
      ],
    ));

    return list;
  }

  Widget radio() {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: makeRadio(),
      ),
    );  
  }

  Widget build(context) {
    return Form(
      key: formKey,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: <Widget>[
          radio(),
          SizedBox(height: 30.0),
          emailField(),
          SizedBox(height: 5.0),
          fullnameField(),
          SizedBox(height: 5.0),
          scfhsnumberField(),
          SizedBox(height: 5.0),
          phoneNumberField(),
          SizedBox(height: 5.0),
          workAdrresFiled(),
          SizedBox(height: 5.0),
          countryField(),
          SizedBox(height: 5.0),
          submitButton(),
          SizedBox(height: 5.0),
          forgotLabel(),
        ],
      ),
    );
  }

  Widget emailField() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: 'Email Address',
            hintText: 'you@examble.com',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
        validator: validateEmai,
        onSaved: (String value) {
          email = value;
        },
      ),
    );
  }

  Widget fullnameField() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Full Name',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        onSaved: (String value) {
          fullname = value;
        },
      ),
    );
  }

  Widget scfhsnumberField() {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'SCFHS number',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          validator: validatePass,
          onSaved: (String value) {
            scfhsnumber = value;
          },
        ));
  }

  Widget phoneNumberField() {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          validator: validatePass,
          onSaved: (String value) {
            phoneNumber = value;
          },
        ));
  }

  Widget workAdrresFiled() {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Work Address',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          validator: validatePass,
          onSaved: (String value) {
            workAdrres = value;
          },
        ));
  }

  Widget countryField() {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Country',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0))),
          onSaved: (String value) {
            country = value;
          },
        ));
  }

  Widget submitButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            if (formKey.currentState.validate()) {
              formKey.currentState.save();

              String type = '';
              if (selected == 0) {
                type = "Physician";
              }
              if (selected == 1) {
                type = "Healthcare Professional";
              }
              if (selected == 1) {
                type = "Student";
              }

              country = country[0] + country[1];
              country.toUpperCase();
              print('Email: $email');
              print('Password: $scfhsnumber');
              print('Full Name: $fullname');
              print('Phone: $phoneNumber');
              print('Work: $workAdrres');
              print('Country: $country');
              print('Type: $type');

              addUser(type, email, fullname, scfhsnumber, phoneNumber,
                  workAdrres, country, context);
            }
          },
          padding: EdgeInsets.all(15),
          color: Colors.orange,
          child: Text('Register', style: TextStyle(color: Colors.white))),
    );
  }

  Widget forgotLabel() {
    return FlatButton(
      child: Row(
        children: <Widget>[
          Text(
            'Already registered?',
            style: TextStyle(color: Colors.black54),
          ),
          Text(" Validate your payment", style: TextStyle(color: Colors.black))
        ],
      ),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => ChangePass()));
      },
    );
  }
}
