import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loincoin/controllers/providers/user.dart';
import 'package:loincoin/widgets/loading.dart';
import 'package:provider/provider.dart';

class BuyCoin extends StatefulWidget {
  @override
  _BuyCoinState createState() => _BuyCoinState();
}

class _BuyCoinState extends State<BuyCoin> {
  TextEditingController amountlc = TextEditingController();
  TextEditingController amountng = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserStateNotifier>(context);
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount (LC)',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: amountlc,
                      validator: (wad) {
                        if (wad.isEmpty)
                          return 'Amount in coin Field is required';
                        else
                          return null;
                      },
                      onChanged: (v) {
                        if (v.trim() != "" || v != null) {
                          var total =
                              double.parse(v.trim()) * user.settings.curRate;
                          amountng.text = total.toString();
                        }
                      },
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                        new LengthLimitingTextInputFormatter(11),
                      ],
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontFamily: 'Poppins'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: '0.0',
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
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
                      'Amount (NGN)',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: amountng,
                      validator: (am) {
                        if (am.isEmpty)
                          return 'Amount in Naira Field is required';
                        else
                          return null;
                      },
                      onChanged: (v) {
                        if (v.trim() != "" || v != null) {
                          var total =
                              double.parse(v.trim()) / user.settings.curRate;
                          amountlc.text = total.toString();
                        }
                      },
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                        new LengthLimitingTextInputFormatter(11),
                      ],
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontFamily: 'Poppins'),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.transparent, width: 0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        fillColor: Color(0xFF232835),
                        filled: true,
                        hintText: '0.0',
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        errorStyle: Theme.of(context).textTheme.bodyText1,
                      ),
                      autocorrect: false,
                      autofocus: false,
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
              user.isLoading
                  ? Loading()
                  : MaterialButton(
                      onPressed: () async {
                        if (!formKey.currentState.validate()) {
                          return;
                        }
                        if (!await user.buyCoin(
                            double.parse(amountlc.text.trim()),
                            double.parse(amountng.text.trim()))) {
                          Fluttertoast.showToast(
                              msg: user.errorMessage,
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.grey,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          return;
                        }
                        Fluttertoast.showToast(
                            msg: "Transaction successful",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.black,
                            fontSize: 16.0);
                        Navigator.pop(context);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 270,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFFF4325C),
                              Color(0xFF0A1634)
                            ],
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Buy',
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
    );
  }
}
