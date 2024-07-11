
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/intro1.jpg",
                          width: 328,
                          height: 328)
            ],
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 256,
                  child: Text("All-in-One: Everything You Need in One Place",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Inter'
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis)
                )
                ]),
          const SizedBox(
            height: 10,
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  SizedBox(
                    width: 256,
                    child: Text("Planning, booking hotel, transportation, search for location in your hand on a single application",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffaeaeae),
                          fontWeight: FontWeight.w700,
                          fontSize: 13
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis)
                  )
              ]
          )
        ],
      ),
    );
  }
}

