import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpinKitWave(
      color: Theme.of(context).iconTheme.color,
      size: 50.0,
    );
  }
}
