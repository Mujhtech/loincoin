class User {
  final String username;
  final String fullname;
  final double coinAmount;
  final double ngAmount;
  final String address;
  final String acctNumber;

  User(
      {this.coinAmount,
      this.fullname,
      this.ngAmount,
      this.username,
      this.acctNumber,
      this.address});

  static User fromJson(Map<String, dynamic> data) {
    return User(
        username: data['username'],
        address: data['wallet_address'],
        acctNumber: data['acct_no'],
        fullname: data['firstname'] + ' ' + data['lastname'],
        coinAmount: double.parse(data['deposit_wallet']),
        ngAmount: double.parse(data['interest_wallet']));
  }
}
