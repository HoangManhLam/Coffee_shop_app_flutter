import 'package:flutter_project/model/coffee.dart';

class DetailViewModel {
  Coffee? detailModel;

  DetailViewModel({
    this.detailModel,
  });

  final List<Coffee> _detailModel = [];

  List<Coffee> get detail => _detailModel;

  void updatePriceDetail(String size) {
    detailModel?.selectedSize = size;
    if (detailModel?.selectedSize == 'S') {
      detailModel?.priceDetail = detailModel!.price - 1;
    } else if (detailModel?.selectedSize == 'M') {
      detailModel?.priceDetail = detailModel!.price;
    } else if (detailModel?.selectedSize == 'L') {
      detailModel?.priceDetail = detailModel!.price + 1;
    }
  }
}
