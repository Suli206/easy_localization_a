import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void languages(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 290,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
          topRight: Radius.circular(6),
          bottomLeft: Radius.circular(6),
        ),
      ),
      child: Column(
        children: [
          Botton(
              onPressed: () {
                context.setLocale(const Locale('ru'));
                Navigator.pop(context);
              },
              title: 'Русский'),
          Botton(
              onPressed: () {
                context.setLocale(const Locale('en'));
                Navigator.pop(context);
              },
              title: 'Английский'),
          Botton(
              onPressed: () {
                context.setLocale(const Locale('ky'));
                Navigator.pop(context);
              },
              title: 'Кыргызский'),
        ],
      ),
    ),
  );
}

class Botton extends StatelessWidget {
  const Botton({
    super.key,
    required this.onPressed,
    required this.title,
  });
  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 61, 59, 59),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
