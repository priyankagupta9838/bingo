import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  FirstScreen extends StatefulWidget {
  const  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      height: size.height*0.8,
      width: size. width,

      child: const Center(
        child: Text(
          "first Screen",
              style: TextStyle(
            color: CupertinoColors.black
        ),
        ),
      )

      ,
    );
  }
}
