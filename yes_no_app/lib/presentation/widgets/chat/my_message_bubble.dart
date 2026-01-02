import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {

  const MyMessageBubble({
    super.key
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(  context).colorScheme;

   return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        decoration: BoxDecoration(
          color: colors.primary,
          borderRadius: BorderRadius.circular(20)
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: const Text('Duis pariatur id anim cupidatat culpa.'),
      ),
      const Text('12:00 PM', style: TextStyle(fontSize: 10, color: Colors.black54),)
    ],
   );
   
  }

}