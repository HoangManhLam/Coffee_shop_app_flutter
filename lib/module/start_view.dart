import 'package:flutter/material.dart';
import 'home/home_view.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FractionallySizedBox(
            heightFactor:
                7 / 10, //phân chia các các widget theo các phần của màn hình
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              // phân chia các các widget theo các phần của màn hình
              heightFactor: 4 / 10,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.26],
                    colors: [Colors.black.withOpacity(0.2), Colors.black],
                  ),
                ), // Đặt màu nền của Container thành đen
                child: Column(
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      'Fall in Love with\nCoffee in Blissful\nDelight!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      'Welcome to our cozy coffee corner, where\nevery cup is a delightful for you.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 40, 40, 28),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(800, 55)),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFC67C4E)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
