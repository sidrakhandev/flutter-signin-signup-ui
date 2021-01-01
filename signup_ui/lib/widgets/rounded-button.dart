import 'package:flutter/material.dart';
import 'package:signup_ui/pallete.dart';

import 'package:firebase_auth/firebase_auth.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    @required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold,color:Colors.pink[500]),
        ),
      ),
    );
  }
}
