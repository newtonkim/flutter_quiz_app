import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.buttonTap, {super.key});

  final String answerText;
  final void Function() buttonTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: buttonTap,
      style: ElevatedButton.styleFrom(
        padding:const EdgeInsetsDirectional.symmetric(
          vertical: 10,
          horizontal: 40
        ),
        backgroundColor: const Color.fromARGB(179, 87, 66, 20),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
   