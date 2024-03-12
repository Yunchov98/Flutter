import 'package:flutter/material.dart';

import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final contoller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox(
      {Key? key,
      required this.contoller,
      required this.onSave,
      required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
                controller: contoller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new task.',
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                ),
                const SizedBox(
                  width: 8,
                ),
                MyButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
