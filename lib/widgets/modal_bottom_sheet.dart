import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loincoin/widgets/buy_coin.dart';
import 'package:loincoin/widgets/sell_coin.dart';
import 'package:loincoin/widgets/send_coin.dart';
import 'package:qr_flutter/qr_flutter.dart';

void sellModalBottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      isScrollControlled: true,
      enableDrag: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
          height: MediaQuery.of(context).size.height - 200,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 50,
                child: Divider(
                    thickness: 3, color: Theme.of(context).dividerColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        color: Theme.of(context).iconTheme.color,
                        size: 30,
                      ),
                      Text('Sell Coin',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SellCoin(),
              )
            ],
          ),
        );
      });
}

void buyModalBottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      isScrollControlled: true,
      enableDrag: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
          height: MediaQuery.of(context).size.height - 200,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        color: Theme.of(context).iconTheme.color,
                        size: 30,
                      ),
                      Text('Buy Coin',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: BuyCoin(),
              )
            ],
          ),
        );
      });
}

void withdrawModalBottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      isScrollControlled: true,
      enableDrag: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
          height: MediaQuery.of(context).size.height - 50,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        color: Theme.of(context).iconTheme.color,
                        size: 30,
                      ),
                      Text('Withdraw',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(),
              ),
              MaterialButton(
                onPressed: () => null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 270,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFFF4325C), Color(0xFF0A1634)],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Withdraw',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        );
      });
}

void sendModalBottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      isScrollControlled: true,
      enableDrag: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
          height: MediaQuery.of(context).size.height - 200,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        color: Theme.of(context).iconTheme.color,
                        size: 30,
                      ),
                      Text('Send Coin',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SendCoin(),
              )
            ],
          ),
        );
      });
}

void depositModalBottomSheet(context, String acctNo, String fullname) {
  showModalBottomSheet(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      isScrollControlled: true,
      enableDrag: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        color: Theme.of(context).iconTheme.color,
                        size: 30,
                      ),
                      Text('Deposit',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(acctNo ?? "0000000000",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 48)),
                    Text(
                      fullname,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 24),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Clipboard.setData(
                      ClipboardData(text: acctNo ?? "0000000000"));
                  Fluttertoast.showToast(
                      msg: "Copied: " + acctNo ?? "0000000000",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.grey,
                      textColor: Colors.black,
                      fontSize: 16.0);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 270,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFFF4325C), Color(0xFF0A1634)],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Copy Account Number',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        );
      });
}

void walletAddressModalBottomSheet(context, String address) {
  showModalBottomSheet(
      backgroundColor: Theme.of(context).backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      isScrollControlled: true,
      enableDrag: true,
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 3,
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        color: Theme.of(context).iconTheme.color,
                        size: 30,
                      ),
                      Text('Wallet Address',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    QrImage(
                      foregroundColor: Theme.of(context).iconTheme.color,
                      data: address,
                      version: QrVersions.auto,
                      size: 200.0,
                    ),
                    Center(
                      child: Text(
                        address,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Clipboard.setData(
                      ClipboardData(text: address ?? "0000000000"));
                  Fluttertoast.showToast(
                      msg: "Copied: " + address ?? "0000000000",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.grey,
                      textColor: Colors.black,
                      fontSize: 16.0);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 270,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    gradient: LinearGradient(
                      colors: <Color>[Color(0xFFF4325C), Color(0xFF0A1634)],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Copy Wallet Address',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        );
      });
}
