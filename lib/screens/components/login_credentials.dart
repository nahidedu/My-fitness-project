import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../screens.home/home_screen.dart';


class  LoginCredentials extends StatelessWidget {
  const LoginCredentials({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(padding: const EdgeInsets.symmetric(horizontal: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Please Log In ', style: TextStyle(fontSize: 26),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Material(
            elevation: 10.0,
            color: white,
            borderRadius: BorderRadius.circular(30.0),
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(vertical: appPadding * 0.75, horizontal: appPadding),
                fillColor: white,
                hintText: 'Email',
                suffixIcon: Icon(Icons.email_outlined,size: 25.0, color: black.withOpacity(0.4),),

              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Material(
            elevation: 10.0,
            color: white,
            borderRadius: BorderRadius.circular(30.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(vertical: appPadding * 0.75, horizontal: appPadding),
                fillColor: white,

                hintText: 'Password',
                suffixIcon: Icon(Icons.lock_outlined,size: 25.0, color: black.withOpacity(0.4),),

              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Center(child: Text('Forget Password?', style: TextStyle(
            fontSize: 18,
            color: black.withOpacity(0.4),

          ),
          ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => const HomeScreen())) ,
            child: Material(
              elevation: 10.0,
              color: primary,
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                width: size.width,
                height: size.height * 0.06,
                child:  const Center(child: Text('Log In',style:  TextStyle(fontSize: 18, color: white, fontWeight: FontWeight.bold),))
              ),
            ),
          )
        ],
      ),




    );
  }
}
