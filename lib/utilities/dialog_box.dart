import 'package:flutter/material.dart';
import 'package:todo_app_/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue.shade500,
      content: Container(
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder:const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: "Add a new task",
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            // buttons -> save & cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save
                MyBotton(
                  text: 'Save',
                  onPressed: onSave,
                ),
                const SizedBox(
                  width: 5,
                ),

                // cancel
                MyBotton(
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
