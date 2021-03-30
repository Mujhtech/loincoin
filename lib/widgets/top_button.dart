import 'package:flutter/material.dart';
import 'package:loincoin/widgets/modal_bottom_sheet.dart';

class TopBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => depositModalBottomSheet(context),
            child: Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFFF4325C), Color(0xFF0A1634)],
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Deposit',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 14),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => withdrawModalBottomSheet(context),
            child: Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFFF4325C), Color(0xFF0A1634)],
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Withdrawal',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 14),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => sendModalBottomSheet(context),
            child: Container(
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFFF4325C), Color(0xFF0A1634)],
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                'Send',
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
