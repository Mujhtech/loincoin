import 'package:flutter/material.dart';

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
          height: MediaQuery.of(context).size.height - 50,
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
                    'Sell',
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
                    'Buy',
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
                    'Send',
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

void depositModalBottomSheet(context) {
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
