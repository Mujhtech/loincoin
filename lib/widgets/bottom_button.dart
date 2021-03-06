import 'package:flutter/material.dart';
import 'package:loincoin/widgets/modal_bottom_sheet.dart';

class ButtomBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => buyModalBottomSheet(context),
            child: Container(
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFFF4325C), Color(0xFF0A1634)],
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Buy',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          GestureDetector(
            onTap: () => sellModalBottomSheet(context),
            child: Container(
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFFF4325C), Color(0xFF0A1634)],
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Sell',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
