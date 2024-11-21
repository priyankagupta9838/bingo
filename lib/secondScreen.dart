import 'package:flutter/cupertino.dart';

class  second extends StatelessWidget {
  const  second({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      height: size.height*0.8,
      width: size.width,
      child: Center(
        child: Text(
            "second Screen"
        ),
      )

      ,
    );
  }
}
