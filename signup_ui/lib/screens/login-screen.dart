import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signup_ui/pallete.dart';
import 'package:signup_ui/widgets/widgets.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Stack(
      children: [      
        Scaffold(         
          backgroundColor: Colors.pink[500],      
          body: Column(            
              children: [              
                Flexible(
                  child: Center(
                    child: Text(
            'MaskIt',
            style: TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.bold),
                
          ),
                    
                  ),
                ),
                SingleChildScrollView(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/main.jpeg'),
                        ),
                ),
                  SizedBox(
                    height: size.width * 0.1,
                  ),
                SingleChildScrollView(
                  reverse:true,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
          SingleChildScrollView(
            reverse:true,
                                child: TextInputField(
                icon: FontAwesomeIcons.user,
                hint: 'Username',
                inputType: TextInputType.text,
                inputAction: TextInputAction.next,
              ),
          ),
          PasswordInput(
            icon: FontAwesomeIcons.lock,
            hint: 'Password',
            inputAction: TextInputAction.done,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
            child: Text(
              'Forgot Password',
              style: kBodyText,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          RoundedButton(
            buttonName: 'Login',
          ),
          SizedBox(
            height: 25,
          ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                    child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                    child: SingleChildScrollView(
                            child: Container(
            child: Text(
              'Create New Account',
              style: kBodyText,
            ),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: kWhite))),
          ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
        )
      ],
    );
  }
}
