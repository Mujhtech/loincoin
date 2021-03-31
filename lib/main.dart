import 'dart:async';
import 'dart:ui';
import 'package:loincoin/controllers/providers/app.dart';
import 'package:loincoin/controllers/providers/user.dart';
import 'package:loincoin/screens/welcome.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:loincoin/constants.dart';
import 'package:loincoin/widgets/show_up.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppStateNotifier()),
        ChangeNotifierProvider.value(value: UserStateNotifier()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
          primaryColor: Colors.white,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white, size: 18),
          dividerColor: Colors.white,
          textTheme: TextTheme(
            headline1: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            headline2: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            headline3: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            headline4: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            headline5: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            headline6: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            bodyText1: TextStyle(color: Colors.white, fontFamily: "Poppins"),
            bodyText2: TextStyle(color: Colors.white, fontFamily: "Poppins"),
          )),
      theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          dividerColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black, size: 18),
          textTheme: TextTheme(
            headline1: TextStyle(color: Colors.black, fontFamily: "Poppins"),
            headline2: TextStyle(color: Colors.black, fontFamily: "Poppins"),
            headline3: TextStyle(color: Colors.black, fontFamily: "Poppins"),
            headline4: TextStyle(color: Colors.black, fontFamily: "Poppins"),
            headline5: TextStyle(color: Colors.black, fontFamily: "Poppins"),
            headline6: TextStyle(color: Colors.black, fontFamily: "Poppins"),
            bodyText1: TextStyle(color: Colors.black, fontFamily: "Poppins"),
            bodyText2: TextStyle(color: Colors.black, fontFamily: "Poppins"),
          )),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Image(
                      image: AssetImage("assets/images/logo.png"),
                      height: 200)),
              ShowUp(
                child: AnimatedTextKit(
                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    animatedTexts: [
                      TyperAnimatedText(Constants.appName.toUpperCase(),
                          textStyle: Theme.of(context).textTheme.headline4)
                    ]),
              ),
            ]),
      ),
    );
  }
}
