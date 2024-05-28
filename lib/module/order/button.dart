import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _onRight = false;

  void _handleTap() {
    setState(() {
      _onRight = !_onRight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 460,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFFE3E3E3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              TextButton(
                onPressed: () {
                  _onRight ? _handleTap() : null;
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(226, 60)),
                  backgroundColor: _onRight
                      ? MaterialStateProperty.all(Color(0xFFE3E3E3))
                      : MaterialStateProperty.all(Color(0xFFC67C4E)),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                child: Text(
                  'Deliver',
                  style: TextStyle(
                    color: _onRight ? Colors.black : Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(226, 60)),
                  backgroundColor: _onRight
                      ? MaterialStateProperty.all(Color(0xFFC67C4E))
                      : MaterialStateProperty.all(Color(0xFFE3E3E3)),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {
                  _onRight ? null : _handleTap();

                  ;
                },
                child: Text(
                  'Pick Up',
                  style: TextStyle(
                    color: _onRight ? Colors.white : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
