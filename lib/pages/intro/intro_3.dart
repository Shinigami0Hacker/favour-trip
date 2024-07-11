
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
              SvgPicture.asset("assets/images/logo.svg",
                  width: 328,
                  height: 328)
            ],
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 256,
                    child: Text("All you need come from favour trip",
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
                    child: Text("Let's us accompany you on your journey",
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

