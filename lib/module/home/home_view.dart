import 'package:flutter/material.dart';
import 'package:flutter_project/module/home/home_view_model.dart';
import 'category.dart';
import 'package:flutter_project/model/coffee.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeViewModel coffeeViewModel = HomeViewModel(
    coffee: Coffee(
      category: '',
      name: '',
      image: '',
      price: 0,
      priceDetail: 0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromARGB(208, 0, 0, 0),
                            Colors.black,
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Location',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Bilzen, Tanjungbalai',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.search),
                                      labelText: 'Search Coffee',
                                      labelStyle: const TextStyle(
                                          color: Colors.white, fontSize: 16.0),
                                      enabledBorder: OutlineInputBorder(
                                        // dùng để đổi màu viền khi chưa click
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        //dùng để đổi màu viền khi đã click
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    fixedSize: MaterialStateProperty.all(
                                        const Size(60, 60)),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xFFC67C4E)),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.zero),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.tune,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        margin: const EdgeInsets.only(top: 155),
                        height: 150,
                        alignment:
                            Alignment.topCenter, // Căn chỉnh ảnh vào giữa
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage('assets/Banner 1.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 0, 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: Container(
                                    color: Colors.red,
                                    padding: const EdgeInsets.all(2),
                                    child: const Text(
                                      'Promo',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 260,
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      color: Colors.black,
                                      constraints: const BoxConstraints(
                                        maxHeight: 30,
                                        maxWidth: 200,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 210,
                      left: 40,
                      child: Text(
                        'Buy one get',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 260,
                      left: 40,
                      child: Text(
                        'one FREE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: SizedBox(
                    height:
                        30, // Tăng chiều cao để đảm bảo đủ không gian cho ListView
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: coffeeViewModel.coffee!.entries.length,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFC67C4E)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15)),
                          ),
                          onPressed: () {},
                          child: Text(
                            coffeeViewModel.coffee!.entries[index],
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Category(
                  coffees: coffeeViewModel.coffees,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: const TabBar(
            unselectedLabelColor:
                Colors.black, // Màu của icon khi không được chọn
            labelColor: Color(
                0xFFC67C4E), //để thay đổi màu sắc của nhãn tab đang được chọn
            indicatorColor: Color(
                0xFFC67C4E), //để thay đổi màu sắc của chỉ báo dưới tab đang được chọn.
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.favorite)),
              Tab(icon: Icon(Icons.inventory_2)),
              Tab(icon: Icon(Icons.notifications)),
            ],
          ),
        ),
      ),
    );
  }
}
