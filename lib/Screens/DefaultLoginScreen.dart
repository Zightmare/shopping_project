import 'package:flutter/material.dart';

class LoginDefualtButton extends StatelessWidget {
  const LoginDefualtButton({
    this.text,
    this.press,
    Key? key,
  }) : super(key: key);

  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.pink),
        onPressed: press,
        child: Text(
          text ?? "ok",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
