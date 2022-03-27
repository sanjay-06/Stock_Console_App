class Stock {
  final String symbol;
  final String company;
  final double price;

  Stock({required this.symbol, required this.company, required this.price});

  static List<Stock> getAll() {
    // ignore: deprecated_member_use
    List<Stock> stocks = [
      Stock(symbol: "Apple", company: "APPLE", price: 250),
      Stock(symbol: "Apple", company: "APPLE", price: 250),
      Stock(symbol: "Apple", company: "APPLE", price: 250),
      Stock(symbol: "Apple", company: "APPLE", price: 250),
      Stock(symbol: "Apple", company: "APPLE", price: 250),
      Stock(symbol: "Apple", company: "APPLE", price: 250),
      Stock(symbol: "Apple", company: "APPLE", price: 250),
      Stock(symbol: "Apple", company: "APPLE", price: 250)
    ];

    return stocks;
  }
}
