import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide(
        color: Colors.transparent,
      )
    );

    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            // Handle send button press
          },
        ),
      );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print("submit: $value");
      },
      onChanged: (value) {
        print("onChanged: $value");
      },
    );
  }
}