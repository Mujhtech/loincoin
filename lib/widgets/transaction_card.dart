import 'package:flutter/material.dart';
import 'package:loincoin/models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction data;
  const TransactionCard({
    @required this.data,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF7BD38).withAlpha(50),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.details,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 16),
              ),
              Text(
                data.type == "+"
                    ? "+ ${data.amount} LC"
                    : "- ${data.amount} LC",
                style: TextStyle(
                    color: data.type == "+" ? Colors.green : Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
