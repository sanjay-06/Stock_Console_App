class Stock {
  final String symbol;
  final String company;
  final double price;
  final double per;
  final String sign;

  Stock(
      {required this.symbol,
      required this.company,
      required this.price,
      required this.per,
      required this.sign});

  static List<Stock> getAll() {
    // ignore: deprecated_member_use
    List<Stock> stocks = [
      Stock(
          symbol: "Infosys",
          company: "INFY",
          price: 1896,
          per: 1.91,
          sign: "+"),
      Stock(symbol: "TCS", company: "TCS", price: 3705, per: 2.54, sign: "-"),
      Stock(
          symbol: "Reliance",
          company: "RELIANCE",
          price: 2618,
          per: 3.45,
          sign: "+"),
      Stock(
          symbol: "IRCTC", company: "IRCTC", price: 767, per: 3.44, sign: "-"),
      Stock(symbol: "ITC", company: "ITC", price: 254, per: 1.54, sign: "+"),
      Stock(symbol: "NMDC", company: "NMDC", price: 158, per: 6.54, sign: "-"),
      Stock(
          symbol: "Tata Steel",
          company: "TATASTEEL",
          price: 250,
          per: 4.54,
          sign: "+"),
      Stock(
          symbol: "Coal India",
          company: "COALIND",
          price: 185,
          per: 3.54,
          sign: "-")
    ];

    return stocks;
  }
}
