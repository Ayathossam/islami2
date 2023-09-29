import 'package:flutter/material.dart';
import 'package:islami/moduls/hadeth/hadeth_view.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = "Hadeth_Details";

  HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  String content = '';
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;

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
              Text(
                args.titel,
                style: theme.textTheme.bodyLarge,
              ),
              Divider(
                color: theme.primaryColor,
                endIndent: 30,
                indent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Text(
                args.content,
                style: theme.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
