import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   'assets/images/result_image.jpg',
            //   width: 300,
            //   color: const Color.fromARGB(150, 255, 255, 255),
            // ),
            const Text('You answered X out of Y questions correctly'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of answers and questions...'),
            const SizedBox(
              height: 30,
            ),

            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(220, 206, 76, 0),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Restart Quiz !',
              ),
            ),
          ],
        ),
      ),
    );
  }
}










// Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//               Image.asset(
//             'assets/images/result_image.jpg',
//             width: 300,
//             color: const Color.fromARGB(150, 255, 255, 255),
//           ),
//         ],
//       ),
//     );