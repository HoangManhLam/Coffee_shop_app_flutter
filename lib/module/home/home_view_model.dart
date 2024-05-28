import 'package:flutter_project/model/coffee.dart';

class HomeViewModel {
  Coffee? coffee;

  HomeViewModel({
    Coffee? coffee,
  }) {
    this.coffee = coffee ??
        Coffee(
          category: '',
          name: '',
          image: '',
          price: 0,
          priceDetail: 0,
        );
    initializeCoffees();
  }

  final List<Coffee> _coffee = [];

  List<Coffee> get coffees => _coffee;

  void initializeCoffees() {
    for (int i = 0; i < coffee!.names.length; i++) {
      _coffee.add(
        Coffee(
          name: coffee!.names[i],
          price: coffee!.prices[i],
          category: coffee!.categories[i],
          image: coffee!.images[i],
          priceDetail: i,
        ),
      );
    }
  }
}
