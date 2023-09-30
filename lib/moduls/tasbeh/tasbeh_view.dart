import 'package:flutter/material.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 30,
        ),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
                margin: EdgeInsets.only(top: mediaQuery.height * 0.009),
                child: Image.asset(
                  'assets/images/head_sebha_logo.png',
                  height: mediaQuery.height * 0.10,
                )),
            Container(
                margin: EdgeInsets.only(top: mediaQuery.height * 0.09),
                child: Image.asset(
                  'assets/images/img_2.png',
                  height: mediaQuery.height * 0.20,
                )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "عدد التسبيحات",
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 170),
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Color(0xFFB7935F),
          ),
          child: Text("30", style: theme.textTheme.bodyLarge),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 120),
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFFB7935F),
          ),
          child: Text("سبحان الله", style: theme.textTheme.bodyMedium),
        ),
      ],
    );
  }
}
