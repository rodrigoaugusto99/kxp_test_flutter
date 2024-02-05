import 'package:flutter/material.dart';

import 'my_button.dart';

class MyDialog extends StatelessWidget {
  final controller;
  Function() onPressedSave;
  Function() onPressedCancel;
  MyDialog({
    super.key,
    required this.controller,
    required this.onPressedCancel,
    required this.onPressedSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 163, 134, 218),
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add a new task'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(
                    //vantagem de usar parametros nomeados - só jogar o valor, dps de colocar tal atributo como required la no objeto
                    text: 'Save',
                    onPressed: onPressedSave),
                const SizedBox(
                  width: 5,
                ),
                //cancel button
                MyButton(text: 'Cancel', onPressed: onPressedCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
