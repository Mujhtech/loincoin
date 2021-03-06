import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loincoin/controllers/providers/user.dart';
import 'package:loincoin/screens/welcome.dart';
import 'package:loincoin/widgets/loading.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _passwordVisible = false;
  final formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController referral = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<UserStateNotifier>(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Text(
            'Hey,',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            'Join us.',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                'I have an account / ',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 18, color: Colors.grey),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return WelcomeScreen();
                })),
                child: Text(
                  'Login',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 18),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Referral (Optional)',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: referral,
                            onChanged: (v) {},
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: 'Loincoin',
                              hintStyle: TextStyle(
                                color: Colors.white70,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              errorStyle: Theme.of(context).textTheme.bodyText1,
                              fillColor: Color(0xFF232835),
                              filled: true,
                            ),
                            autocorrect: false,
                            autofocus: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: username,
                            validator: (username) {
                              if (username.isEmpty)
                                return 'Username Field is required';
                              else
                                return null;
                            },
                            onChanged: (v) {},
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: 'Loincoin',
                              hintStyle: TextStyle(
                                color: Colors.white70,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              errorStyle: Theme.of(context).textTheme.bodyText1,
                              fillColor: Color(0xFF232835),
                              filled: true,
                            ),
                            autocorrect: false,
                            autofocus: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Full name',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: fullname,
                            validator: (fullname) {
                              if (fullname.isEmpty)
                                return 'Fullname Field is required';
                              else
                                return null;
                            },
                            onChanged: (v) {},
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: 'Loincoin',
                              hintStyle: TextStyle(
                                color: Colors.white70,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              errorStyle: Theme.of(context).textTheme.bodyText1,
                              fillColor: Color(0xFF232835),
                              filled: true,
                            ),
                            autocorrect: false,
                            autofocus: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email Address',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: email,
                            validator: (email) {
                              if (email.isEmpty)
                                return 'Email Address Field is required';
                              else
                                return null;
                            },
                            onChanged: (v) {},
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: 'loincoin@gmail.com',
                              hintStyle: TextStyle(
                                color: Colors.white70,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              errorStyle: Theme.of(context).textTheme.bodyText1,
                              fillColor: Color(0xFF232835),
                              filled: true,
                            ),
                            autocorrect: false,
                            autofocus: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: mobile,
                            validator: (phone) {
                              if (phone.isEmpty)
                                return 'Phone number Field is required';
                              else
                                return null;
                            },
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[0-9.,]+')),
                              new LengthLimitingTextInputFormatter(11),
                            ],
                            onChanged: (v) {},
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent, width: 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              hintText: '07000',
                              hintStyle: TextStyle(
                                color: Colors.white70,
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              errorStyle: Theme.of(context).textTheme.bodyText1,
                              fillColor: Color(0xFF232835),
                              filled: true,
                            ),
                            autocorrect: false,
                            autofocus: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 14),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: password,
                            validator: (password) {
                              if (password.isEmpty)
                                return 'Password Field is required';
                              else
                                return null;
                            },
                            onChanged: (v) {},
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily: 'Poppins'),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.transparent, width: 0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                fillColor: Color(0xFF232835),
                                filled: true,
                                hintText: '*********',
                                hintStyle: TextStyle(
                                  color: Colors.white70,
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                errorStyle:
                                    Theme.of(context).textTheme.bodyText1,
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  onLongPress: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  onLongPressUp: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  child: Icon(
                                      _passwordVisible
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.white38),
                                )),
                            autocorrect: false,
                            autofocus: false,
                            obscureText: !_passwordVisible,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                    ),
                    auth.isLoading
                        ? Loading()
                        : MaterialButton(
                            onPressed: () async {
                              if (!formKey.currentState.validate()) {
                                return;
                              }
                              if (!await auth.register(
                                username.text.trim(),
                                fullname.text.trim(),
                                mobile.text.trim(),
                                email.text.trim(),
                                password.text.trim(),
                                referral.text.trim(),
                              )) {
                                Fluttertoast.showToast(
                                    msg: auth.errorMessage,
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.grey,
                                    textColor: Colors.black,
                                    fontSize: 16.0);
                                return;
                              }
                              Fluttertoast.showToast(
                                  msg: "Account created successfully",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.grey,
                                  textColor: Colors.black,
                                  fontSize: 16.0);
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return WelcomeScreen();
                              }));
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: 270,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFFF4325C),
                                    Color(0xFF0A1634)
                                  ],
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                            ),
                          ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
