class Coffee {
  String name;
  num price;
  String category;
  String image;
  String selectedSize = 'M';
  num priceDetail;
  Coffee({
    required this.category,
    required this.name,
    required this.image,
    required this.price,
    required this.priceDetail,
  });
  List<String> images = <String>[
    'assets/cf1.png',
    'assets/cf2.png',
    'assets/cf3.png',
    'assets/cf4.png'
  ];

  List<String> names = <String>[
    'Caffe Mocha',
    'Flat White',
    'Caffe Milk',
    'Caffe',
  ];

  List<String> categories = <String>[
    'Deep Foam',
    'Latte',
    'Espresso',
    'Machiato',
  ];

  List<num> prices = <num>[
    4.5,
    5.7,
    6.8,
    7.9,
  ];
  List<String> entries = <String>[
    'All Coffee',
    'Machiato',
    'Latte',
    'America',
    'Milk',
  ];
}
