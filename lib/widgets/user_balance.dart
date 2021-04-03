import 'package:flutter/material.dart';

class UserBalance extends StatelessWidget {
  final bool type;
  final double ngAmount;
  final double lcAmount;
  final double rate;
  UserBalance({this.lcAmount, this.ngAmount, this.type, this.rate});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        color: Color(0xFFF7BD38),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 4.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    type ? 'Wallet Balance' : 'Deposit Balance',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: Text(
                    type
                        ? '${lcAmount.toStringAsFixed(2)}LC'
                        : "NGN ${ngAmount.toStringAsFixed(2)}",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 40),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                type
                    ? Flexible(
                        child: Text(
                            "NGN ${(lcAmount * rate).toStringAsFixed(2)}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .copyWith(fontSize: 20),
                            overflow: TextOverflow.ellipsis),
                      )
                    : Container()
              ]),
        ),
      ),
    );
  }
}
