import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoSlidingControl extends StatefulWidget {
  const CupertinoSlidingControl({super.key});

  @override
  State<CupertinoSlidingControl> createState() =>
      _CupertinoSlidingControlState();
}

class _CupertinoSlidingControlState extends State<CupertinoSlidingControl> {
  // int selectedSegment = 0;
  //
  // @override
  // Widget build(BuildContext context) {
  //   return CupertinoSegmentedControl<int>(
  //     children: {
  //       0: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Text('Login'),
  //       ),
  //       1: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Text('Register'),
  //       ),
  //     },
  //     onValueChanged: (int value) {
  //       setState(() {
  //         selectedSegment = value;
  //       });
  //     },
  //     groupValue: selectedSegment,
  //   );
  int segmentedControlGroupValue = 0;

  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("Item 1"),
    1: Text("Item 2")
  };

  @override
  Widget build(BuildContext context) {
    return  CupertinoSlidingSegmentedControl(
          groupValue: segmentedControlGroupValue,
          children: myTabs,
          onValueChanged: (i) {
            setState(() {
              segmentedControlGroupValue != i;
            });
          }
    );
  }
}


