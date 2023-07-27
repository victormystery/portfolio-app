import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> name = [
      'Flutter-Dart',
      'Firebase',
      'HTML',
      'CSS',
      'JavaScript',
    ];
    List<int> _percent = [
      70,
      40,
      60,
      30,
      5,
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 235,
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: ShapeDecoration(
        color: Color(0xFF212121),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: Color(0xFF333333)),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              width: 205,
              height: 103,
              alignment: Alignment.center,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  Text(
                    '${_percent[index]}%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontSize: 50,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    name[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF27AE60),
                      fontSize: 24,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
