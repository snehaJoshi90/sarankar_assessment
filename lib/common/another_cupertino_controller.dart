import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AnotherCupertinoController extends StatefulWidget {
  const AnotherCupertinoController({super.key});

  @override
  State<AnotherCupertinoController> createState() =>
      _AnotherCupertinoControllerState();
}

class _AnotherCupertinoControllerState
    extends State<AnotherCupertinoController> {
  String selectedSegment = 'Off';
  int segmentedControlGroupValue = 0;

  // Changing the tabs to "Cash" and "Credit"
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("Cash"),
    1: Text("Credit"),
  };

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: Center(
        child: CupertinoSlidingSegmentedControl<int>(

          backgroundColor: Colors.grey.shade400,
          // Set the background color of unselected segments
          thumbColor: Colors.green,
          // Set thumb color when a segment is selected
          groupValue: segmentedControlGroupValue,

          children: myTabs,

          onValueChanged: (int? i) {
            setState(() {
              segmentedControlGroupValue = i!;
            });
          },
        ),
      ),
    );
    return   CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Sliding Segmented Control'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoSlidingSegmentedControl<String>(
                backgroundColor: Colors.blue.shade100, // Background color for unselected segment
                thumbColor: Colors.blue, // Color for the thumb slider
                padding: EdgeInsets.all(2), // Padding for the whole control
                groupValue: selectedSegment,
                children: {
                  'Off': Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'Off',
                      style: TextStyle(
                        color: selectedSegment == 'Off'
                            ? Colors.white
                            : Colors.blue,
                        decoration: TextDecoration.none, // Removes underline
                      ),
                    ),
                  ),
                  'On': Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'On',
                      style: TextStyle(
                        color: selectedSegment == 'On'
                            ? Colors.white
                            : Colors.blue,
                        decoration: TextDecoration.none, // Removes underline
                      ),
                    ),
                  ),
                },
                onValueChanged: (String? value) {
                  setState(() {
                    selectedSegment = value!;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Selected: $selectedSegment',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class NotificationsToggle extends StatefulWidget {
//   @override
//   _NotificationsToggleState createState() => _NotificationsToggleState();
// }
//
// class _NotificationsToggleState extends State<NotificationsToggle> {
//   int segmentedControlGroupValue = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             // Notifications label
//             Text(
//               'Notifications',
//               style: TextStyle(fontSize: 18),
//             ),
//
//             // Segmented control with a semi-circular shape
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade300,
//                 borderRadius: BorderRadius.circular(20), // Semi-circular border
//               ),
//               child: CupertinoSlidingSegmentedControl<int>(
//                 groupValue: segmentedControlGroupValue,
//                 thumbColor: Colors.green, // Green for the selected option
//                 backgroundColor: Colors.transparent, // Transparent to show custom background
//                 padding: EdgeInsets.all(2), // Ensure proper padding inside the control
//                 children: {
//                   0: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8),
//                     child: Text(
//                       'OFF',
//                       style: TextStyle(
//                         color: segmentedControlGroupValue == 0
//                             ? Colors.white
//                             : Colors.black,
//                       ),
//                     ),
//                   ),
//                   1: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8),
//                     child: Text(
//                       'ON',
//                       style: TextStyle(
//                         color: segmentedControlGroupValue == 1
//                             ? Colors.white
//                             : Colors.black,
//                       ),
//                     ),
//                   ),
//                 },
//                 onValueChanged: (int? value) {
//                   setState(() {
//                     segmentedControlGroupValue = value!;
//                   });
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

