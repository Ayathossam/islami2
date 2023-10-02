import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  double angle = 0;
  int curIndex = 0;
  int counter = 0;
  List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر'
  ];

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
                decoration: BoxDecoration(color: theme.highlightColor),
                margin: EdgeInsets.only(top: mediaQuery.height * 0.09),
                child: Transform.rotate(
                  angle: angle,
                  child: InkWell(
                    onTap: () {
                      clickOnImage();
                    },
                    child: Image.asset(
                      'assets/images/img_2.png',
                      height: mediaQuery.height * 0.20,
                    ),
                  ),
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
          child: Text("$counter", style: theme.textTheme.bodyLarge),
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
          child: Text(azkar[curIndex], style: theme.textTheme.bodyMedium),
        ),
      ],
    );
  }

  void clickOnImage() {
    angle += 5;
    counter++;

    if (counter == 30) {
      counter = 0;
      curIndex++;
      if (curIndex < 3) {
        curIndex = 0;
      }
    }
    setState(() {});
  }
}
