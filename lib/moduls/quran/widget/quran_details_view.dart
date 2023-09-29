import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/quran/quran_view.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "Quran_Details";

  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = '';
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (content.isEmpty) readFiles(args.suraNumber);
    readFiles(args.suraNumber);

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
                  Text(" سورة ${args.suraName}",
                      style: theme.textTheme.bodyLarge),
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
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall,
                  ),
                  itemCount: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String i) async {
    String text = await rootBundle.loadString('assets/files/$i.txt');
    content = text;
    setState(() {
      allVerses = content.split("\n");
    });
  }
}
