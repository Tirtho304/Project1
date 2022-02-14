import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final _fromkey = GlobalKey<FormState>();
  // bool _autovalid = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "SignUp",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                backgroundColor: Colors.white,
                elevation: 0.0,
              ),
              body: SingleChildScrollView(
                child: Form(
                  // autovalidateMode: _autovalid,
                  key: _fromkey,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Text(
                              "Add a Photo",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  label: Text("Ussername"),
                                  hintText: "Enter Your Usser Name",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter Correct Your Usser Name";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  label: Text("Password"),
                                  hintText: "Enter Your  Password",
                                  border: OutlineInputBorder(),
                                ),
                                obscureText: true,
                                validator: MultiValidator([
                                  LengthRangeValidator(
                                      min: 4,
                                      max: 8,
                                      errorText:
                                          "Please Give Correct Password "),
                                  RequiredValidator(errorText: "Required")
                                ]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  label: Text("PhoneNumber"),
                                  hintText: "Enter Your Phone Number",
                                  border: OutlineInputBorder(),
                                ),
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "Required"),
                                ]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))),
    );
  }
}
