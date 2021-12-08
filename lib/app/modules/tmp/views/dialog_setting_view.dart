import 'package:flutter/material.dart';

class DialogSettingView extends StatelessWidget {
  final Color _textColor = Colors.white;

  @override
  Widget build(BuildContext context) => IconButton(
        icon: Icon(Icons.people, color: Colors.grey),
        onPressed: () => showUserDialog(context),
      );

  void showUserDialog(BuildContext context) => showGeneralDialog(
        barrierLabel: "Label",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: Duration(milliseconds: 300),
        context: context,
        pageBuilder: (context, anim1, anim2) {
          return Material(
            color: Colors.black,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'This is a Custom Dialog',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: _textColor,
                        ),
                      ),
                      Text(
                        'This is a Custom Dialog',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: _textColor,
                        ),
                      ),
                      Text(
                        'This is a Custom Dialog',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: _textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        transitionBuilder: (context, anim1, anim2, child) {
          return SlideTransition(
            position:
                Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
            child: child,
          );
        },
      );

  // void showUserDialog(BuildContext context) => showDialog(
  //       builder: (context) => Dialog(
  //         insetAnimationCurve: Curves.easeInOutBack,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(20),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               SizedBox(height: 12),
  //               Text(
  //                 'This is a Custom Dialog',
  //                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  //               ),
  //               SizedBox(height: 12),
  //               Text(
  //                 'You get more customisation freedom in this type of dialogs',
  //                 textAlign: TextAlign.center,
  //                 style: TextStyle(fontSize: 20),
  //               ),
  //               SizedBox(height: 12),
  //               ElevatedButton(
  //                 child: Text('Close'),
  //                 onPressed: () => Navigator.of(context).pop(),
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //       context: context,
  //       barrierDismissible: false,
  //     );
}
