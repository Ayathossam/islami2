import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  static const String routeName = "Quran_Details";

  const QuranDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('إسلامى'),
        ),
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 100),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.6),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("hgfy", style: theme.textTheme.bodyLarge),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 30,
                    color: Colors.black,
                  )
                ],
              ),
              Divider(
                color: theme.primaryColor,
                endIndent: 30,
                indent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Text(
                'HUGFRYFYHKUFYR',
                style: theme.textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}
