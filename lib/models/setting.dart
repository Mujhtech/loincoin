class Settings {
  final String curSymbol;
  final double curRate;
  final double transferCharges;
  final String name;

  Settings({this.curRate, this.curSymbol, this.name, this.transferCharges});

  static Settings fromJson(Map<String, dynamic> data) {
    return Settings(
        transferCharges: double.parse(data['transfer_charges']),
        name: data['name'],
        curSymbol: data['cur_symbol'],
        curRate: double.parse(data['cur_rate']));
  }
}
