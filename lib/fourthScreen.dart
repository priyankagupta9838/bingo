import 'package:flutter/cupertino.dart';

class  fourth extends StatelessWidget {
  const  fourth({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      height: size.height*0.8,
      width: size.width,
      child: Center(
        child: Text(
            "fourt Screen"
        ),
      )

      ,
    );
  }
}
