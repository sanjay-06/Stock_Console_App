// ignore_for_file: file_names

class StockDataModel {
  //data Type
  int? id;
  List<String>? stocks;

// constructor
  StockDataModel({this.id, this.stocks});

  //method that assign values to respective datatype vairables
  StockDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stocks = json['stocks'];
  }
}
