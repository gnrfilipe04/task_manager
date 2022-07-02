import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        actions: [
            Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)), 
              depth: 8,
              lightSource: LightSource.topLeft,
            ),
            child: Center(
              child: NeumorphicIcon(
                Icons.menu,
                size: 30,
                style: const NeumorphicStyle(
                  depth: 3,
                  color: Colors.black38
                ),
            ),
            )
          ),
        ],
        leading: Neumorphic(
          style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(40)), 
            depth: 8,
            lightSource: LightSource.topLeft,
          ),
          child: Center(
            child: NeumorphicIcon(
              Icons.arrow_back_ios_new,
              size: 30,
              style: const NeumorphicStyle(
                depth: 3,
                color: Colors.black38
              ),
          ),
          )
        ),
      ),
      body: Center(
        child: NeumorphicText(
        "Flutter",
        style: const NeumorphicStyle(
            depth: 4,  //customize depth here
            color: Colors.white, //customize color here
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 90, //customize size here
            fontWeight: FontWeight.bold
            // AND others usual text style properties (fontFamily, fontWeight, ...)
          ),
        ),
      ),
    );
  }
}