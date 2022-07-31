import 'package:flutter/material.dart';

import '../../constants/constants.dart';
class CircleButton extends StatelessWidget {
  const CircleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.42,
      right: size.width * 0.15,
      child: FloatingActionButton(
        elevation: 5.0,
          onPressed: (){},
         backgroundColor: primary,
        child: const Icon(Icons.arrow_back, size: 30.0,),

          ),
    );
  }
}
