import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../../constants/constants.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: appPadding, right: appPadding / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
            Padding(
              padding: const EdgeInsets.all(appPadding / 20),
              child: Container(
                decoration: const BoxDecoration(
                  color: primary,
                  shape: BoxShape.circle,
                ) ,
                child: Padding(
                  padding: const EdgeInsets.all(appPadding / 20),
                  child: Container(
                    decoration:  const BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(appPadding / 8),
                      child: Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/propic.jpeg'),

                        ),
                      ),
                    ),
                  ),

                ),
              ),
            ),
              SizedBox(
                width: size.width * 0.01,
              ),
              const Text('Jannat Rahman', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Icon(Icons.notifications_none_rounded, size: 30.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(appPadding / 5),
                      child: Text('0', style: TextStyle(color: white, fontSize: 8),),
                    ),
                  )
                ],
              ),
              Transform(
                transform: Matrix4.rotationY(math.pi),
                  alignment: Alignment.center,
                  child: Icon(Icons.sort_rounded, size: 30.0,)

              ),
            ],
          )
        ],
      ) ,
    );
  }
}
