import 'package:flutter/material.dart';
import 'package:loincoin/widgets/bottom_button.dart';
import 'package:loincoin/widgets/modal_bottom_sheet.dart';
import 'package:loincoin/widgets/top_button.dart';
import 'package:loincoin/widgets/user_profile_image.dart';
import 'package:loincoin/widgets/user_balance.dart';
import 'package:loincoin/widgets/transaction_card.dart';
import 'package:provider/provider.dart';
import 'package:loincoin/controllers/providers/user.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserStateNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () async {
            if (!await user.logout()) {
              return;
            }
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.logout,
            color: Theme.of(context).iconTheme.color,
            size: 20,
          ),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        title: Text(user.user.username,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.w600)),
        elevation: 0,
        actions: [
          Icon(
            Icons.settings,
            color: Theme.of(context).iconTheme.color,
            size: 20,
          ),
          GestureDetector(
            onTap: () {
              walletAddressModalBottomSheet(context, user.user.address);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: UserProfileImage(
                  imageUrl: "assets/images/logo.png", size: 36.0),
            ),
          ),
        ],
      ),
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
          children: [
            UserBalance(
              lcAmount: user.user.coinAmount,
              ngAmount: user.user.ngAmount,
            ),
            TopBtn(
              acctNumber: user.user.acctNumber,
              fullname: user.user.fullname,
            ),
            const SizedBox(height: 12.0),
            Text(
              'Transactions',
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 18),
            ),
            ...user.transactions.map((e) => TransactionCard(data: e)),
          ],
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 100.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                  Theme.of(context).scaffoldBackgroundColor,
                ],
              ),
            ),
          ),
        ),
        Positioned(bottom: 30, child: ButtomBtn())
      ]),
    );
  }
}
