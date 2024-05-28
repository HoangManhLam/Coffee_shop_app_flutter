import 'package:flutter_project/model/coffee.dart';

class OrderViewModel {
  Coffee? orderModel;
  num? priceOrder;
  int counter = 1;
  num? wallet;

  OrderViewModel({this.orderModel, this.priceOrder});

  final List<Coffee> _orderModel = [];

  List<Coffee> get order => _orderModel;

  void updatePrice() {
    priceOrder = counter * orderModel!.priceDetail;
  }

  void updateWallet() {
    if (counter >= 1) {
      wallet = priceOrder! + 1;
    } else {
      wallet = 0;
    }
  }
}
