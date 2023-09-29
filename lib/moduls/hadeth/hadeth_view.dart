import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/moduls/hadeth/hadeth_details_view.dart';

class HadethView extends StatefulWidget {
  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readFiles();
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset('assets/images/hadeth.png'),
        Divider(
          thickness: 1.8,
          endIndent: 0,
          indent: 0,
          color: theme.primaryColor,
          height: 12,
        ),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(
          thickness: 1.8,
          endIndent: 0,
          indent: 0,
          color: theme.primaryColor,
          height: 12,
        ),
        Expanded(
            child: ListView.separated(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, HadethDetails.routeName,
                  arguments: HadethContent(
                      titel: allHadethContent[index].titel,
                      content: allHadethContent[index].content));
            },
            child: Text(
              allHadethContent[index].titel,
              textAlign: TextAlign.center,
            ),
          ),
          separatorBuilder: (context, index) => Divider(
            thickness: 1.2,
            endIndent: 60,
            indent: 60,
            color: theme.primaryColor,
            height: 12,
          ),
          itemCount: allHadethContent.length,
        )),
      ],
    );
  }

  readFiles() async {
    String text = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadeth = text.split("#");
    for (int i = 0; i < allHadeth.length; i++) {
      String singleHadeth = allHadeth[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf("\n");
      String titel = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      HadethContent hadethContent =
          HadethContent(titel: titel, content: content);

      setState(() {
        allHadethContent.add(hadethContent);
      });
    }
  }
}

class HadethContent {
  final String titel;
  final String content;

  HadethContent({required this.titel, required this.content});
}
