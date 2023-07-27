import 'package:flutter/material.dart';
import 'package:portfolio_app/widget/stack.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'My Skills',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          MyStack(),
        ],
      ),
    );
  }
}
