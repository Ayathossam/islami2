import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      children: [
        SizedBox(height: 160),
        Image.asset(
          'assets/images/Radio.png',
        ),
        SizedBox(height: 40),
        Text(
          'إذاعة القرآن الكريم',
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 50),
        Image.asset(
          'assets/images/img_3.png',
          height: mediaQuery.height * 0.04,
        ),
      ],
    );
  }
}
